module Xent.Runtime
  ( Attr
  , El
  , XEnum (..)
  , Value (..)
  , Handler (..)
  , QueryEvent (..)
  , RatingEvent (..)
  , IndexBoolEvent (..)
  , RangeEvent (..)
  , ScrollPos (..)
  , atEnd
  , element
  , prop
  , on
  , items_
  , key
  , keyText
  , Theme (..)
  , Window (..)
  , defaultWindow
  , run
  ) where

import Control.Concurrent (runInBoundThread)
import Control.Exception (SomeException, bracket, catch, onException, throwIO)
import Control.Monad (foldM, forM, forM_, unless, when)
import Data.Bits (shiftL, testBit, (.|.))
import Data.IORef
import Data.Int (Int32)
import qualified Data.ByteString.Unsafe as BU
import qualified Data.Map.Strict as M
import Data.Maybe (isJust, maybeToList)
import qualified Data.Set as S
import qualified Data.Text as T
import qualified Data.Text.Encoding as TE
import Data.Word (Word32, Word64, Word8)
import Foreign.C.String (withCWString)
import Foreign.C.Types (CDouble, CInt)
import Foreign.Marshal.Array (allocaArray, peekArray)
import Foreign.Ptr (FunPtr, Ptr, castPtr, nullFunPtr, nullPtr)
import Foreign.StablePtr
import System.IO (hPutStrLn, stderr)
import Xent.FFI

class XEnum a where
  toC :: a -> Word32

data Value
  = VBool !Bool
  | VI32 !Int32
  | VF32 !Float
  | VF64 !Double
  | VEnum !Word32
  | VColor !Word32
  | VStr !T.Text
  | VRes !Word64

same :: Value -> Value -> Bool
same (VBool a) (VBool b) = a == b
same (VI32 a) (VI32 b) = a == b
same (VF32 a) (VF32 b) = a == b || (isNaN a && isNaN b)
same (VF64 a) (VF64 b) = a == b || (isNaN a && isNaN b)
same (VEnum a) (VEnum b) = a == b
same (VColor a) (VColor b) = a == b
same (VStr a) (VStr b) = a == b
same (VRes a) (VRes b) = a == b
same _ _ = False

reset :: Word32 -> Value -> Value
reset pid (VF32 _) | pid == propWidth || pid == propHeight = VF32 (0 / 0)
reset pid (VBool _) = VBool (pid == propEnabled)
reset _ (VI32 _) = VI32 0
reset _ (VF32 _) = VF32 0
reset _ (VF64 _) = VF64 0
reset _ (VEnum _) = VEnum 0
reset _ (VColor _) = VColor 0
reset _ (VStr _) = VStr T.empty
reset _ (VRes _) = VRes 0

data QueryEvent = QueryEvent {queryText :: !T.Text, queryIndex :: !Int32}
data RatingEvent = RatingEvent {ratingValue :: !Double, ratingCount :: !Int32}
data IndexBoolEvent = IndexBoolEvent {indexOf :: !Int32, indexValue :: !Bool}
data RangeEvent = RangeEvent {rangeStart :: !Float, rangeEnd :: !Float}
data ScrollPos = ScrollPos {scrollX :: !Float, scrollY :: !Float, scrollMaxX :: !Float, scrollMaxY :: !Float}

atEnd :: ScrollPos -> Bool
atEnd s = scrollY s >= scrollMaxY s - 1

data Handler msg
  = HValue msg
  | HBool (Bool -> msg)
  | HI32 (Int32 -> msg)
  | HF32 (Float -> msg)
  | HF64 (Double -> msg)
  | HStr (T.Text -> msg)
  | HQuery (QueryEvent -> msg)
  | HRating (RatingEvent -> msg)
  | HIndexBool (IndexBoolEvent -> msg)
  | HRange (RangeEvent -> msg)
  | HScroll (ScrollPos -> msg)

data Key = KeyInt !Int | KeyText !T.Text
  deriving (Eq, Ord)

data Op msg
  = OpProp !Word32 !Value
  | OpOn !Word32 (Handler msg)
  | OpKey !Key
  | OpItems !Int (Int -> El msg)

newtype Attr c msg = Attr (Op msg)

data El msg = El
  { elTy :: !Word32
  , elKey :: !(Maybe Key)
  , elProps :: [(Word32, Value)]
  , elHandlers :: [(Word32, Handler msg)]
  , elKids :: [El msg]
  , elItems :: Maybe (Int, Int -> El msg)
  }

upsert :: Eq k => k -> v -> [(k, v)] -> [(k, v)]
upsert k v xs = filter ((/= k) . fst) xs ++ [(k, v)]

element :: Word32 -> [Attr c msg] -> [El msg] -> El msg
element ty attrs kids = foldl apply (El ty Nothing [] [] kids Nothing) attrs
  where
    apply e (Attr (OpProp i v)) = e {elProps = upsert i v (elProps e)}
    apply e (Attr (OpOn i h)) = e {elHandlers = upsert i h (elHandlers e)}
    apply e (Attr (OpKey k)) = e {elKey = Just k}
    apply e (Attr (OpItems n f)) =
      e {elItems = Just (n, f), elProps = upsert propItemCount (VI32 (fromIntegral (min n 2147483647))) (elProps e)}

prop :: Word32 -> Value -> Attr c msg
prop i v = Attr (OpProp i v)

on :: Word32 -> Handler msg -> Attr c msg
on i h = Attr (OpOn i h)

items_ :: Int -> (Int -> El msg) -> Attr c msg
items_ n f = Attr (OpItems n f)

key :: Int -> Attr c msg
key = Attr . OpKey . KeyInt

keyText :: T.Text -> Attr c msg
keyText = Attr . OpKey . KeyText

realize :: Maybe (Int32, Int32, Int32) -> El msg -> El msg
realize window e = case elItems e of
  Nothing -> e
  Just (count, item) ->
    let num pid d = case lookup pid (elProps e) of
          Just (VF32 v) | v > 0 -> v
          _ -> d
        rows = ceiling (num propHeight 600 / num propItemHeight 40) + 3 :: Int
        (f0, l0, lanes) = maybe (0, rows, 1) (\(a, b, c) -> (fromIntegral a, fromIntegral b, max 1 (fromIntegral c))) window
        (first', lastIx)
          | l0 >= count =
              let l = count - 1
                  f = max 0 (l - (l0 - f0))
               in (f - f `mod` lanes, l)
          | otherwise = (max 0 f0, l0)
        span' = max 1 (lastIx - first' + 1)
        row i = El ctrlListItem (Just (KeyInt (i `mod` span'))) [] [] [item i] Nothing
     in e
          { elProps = upsert propRealizedFirst (VI32 (fromIntegral first')) (elProps e)
          , elKids = elKids e ++ map row [first' .. lastIx]
          }

data NodeState msg = NodeState
  { nsHandlers :: IORef [(Word32, Handler msg)]
  , nsWindow :: IORef (Maybe (Int32, Int32, Int32))
  , nsEcho :: IORef (Word64, Word64)
  , nsUser :: IORef Word32
  }

data Sub = Sub {subEvent :: !Word32, subPending :: !Bool, subToken :: !Word32, subId :: !Word64}

data Node msg = Node
  { nCtrl :: !Word64
  , nLocal :: !(Maybe Word32)
  , nTy :: !Word32
  , nKey :: !(Maybe Key)
  , nProps :: [(Word32, Value)]
  , nSubs :: [Sub]
  , nKids :: [Node msg]
  , nState :: NodeState msg
  , nStable :: StablePtr (NodeState msg)
  }

data Rt msg = Rt
  { rtQueue :: IORef [msg]
  , rtDirty :: IORef Bool
  , rtApp :: IORef (Ptr FluxApp)
  , rtEventFn :: IORef (FunPtrEvent)
  }

type FunPtrEvent = FunPtr EventFn

data Ctx msg = Ctx {cRt :: Rt msg, cTxn :: Ptr XtkTxn, cGrave :: IORef [Node msg]}

type Ref = (CInt, Word64)

target :: Node msg -> Ref
target n = maybe (refExisting, nCtrl n) (\l -> (refLocal, fromIntegral l)) (nLocal n)

wake :: Rt msg -> IO ()
wake rt = do
  app <- readIORef (rtApp rt)
  unless (app == nullPtr) (appRedraw app)

report :: SomeException -> IO ()
report e = hPutStrLn stderr ("hsxent: " ++ show e)

decode :: Handler msg -> Ptr XtkEvent -> IO msg
decode (HValue m) _ = pure m
decode (HBool f) ev = f <$> evBool ev
decode (HI32 f) ev = f <$> evI32 ev
decode (HF32 f) ev = f <$> evF32 ev
decode (HF64 f) ev = f <$> evF64 ev
decode (HStr f) ev = f <$> (evString ev >>= uncurry text)
decode (HQuery f) ev = do
  (p, n, i) <- evQuery ev
  t <- text p n
  pure (f (QueryEvent t i))
decode (HRating f) ev = f . uncurry RatingEvent <$> evRating ev
decode (HIndexBool f) ev = f . uncurry IndexBoolEvent <$> evIndexBool ev
decode (HRange f) ev = f . uncurry RangeEvent <$> evRange ev
decode (HScroll f) ev = (\(a, b, c, d) -> f (ScrollPos a b c d)) <$> evScroll ev

text :: Ptr Word8 -> Word32 -> IO T.Text
text p n
  | p == nullPtr || n == 0 = pure T.empty
  | otherwise = TE.decodeUtf8Lenient <$> BU.unsafePackCStringLen (castPtr p, fromIntegral n)

trampoline :: Rt msg -> EventFn
trampoline rt arg ev = handle `catch` (\e -> report e >> pure eventContinue)
  where
    handle = do
      st <- deRefStablePtr (castPtrToStablePtr arg)
      eid <- evId ev
      if eid == eventRealize
        then do
          evWindow ev >>= writeIORef (nsWindow st) . Just
          writeIORef (rtDirty rt) True
          wake rt
          pure eventHandled
        else do
          change@(_, rev) <- evChange ev
          (_, old) <- readIORef (nsEcho st)
          when (rev > old) (writeIORef (nsEcho st) change)
          cause <- evCause ev
          when (cause == causeUser && eid < 32) (modifyIORef' (nsUser st) (.|. (1 `shiftL` fromIntegral eid)))
          handlers <- readIORef (nsHandlers st)
          case lookup eid handlers of
            Nothing -> pure eventContinue
            Just h -> do
              msg <- decode h ev
              modifyIORef' (rtQueue rt) (msg :)
              wake rt
              pure eventHandled

withValue :: Value -> (CInt -> Int -> CDouble -> Ptr Word8 -> Word32 -> IO a) -> IO a
withValue (VStr t) k = BU.unsafeUseAsCStringLen (TE.encodeUtf8 t) (\(p, n) -> k valueString 0 0 (castPtr p) (fromIntegral n))
withValue v k = case v of
  VBool b -> k valueBool (fromEnum b) 0 nullPtr 0
  VI32 i -> k valueI32 (fromIntegral i) 0 nullPtr 0
  VF32 f -> k valueF32 0 (realToFrac f) nullPtr 0
  VF64 d -> k valueF64 0 (realToFrac d) nullPtr 0
  VEnum e -> k valueEnum (fromIntegral e) 0 nullPtr 0
  VColor c -> k valueColor (fromIntegral c) 0 nullPtr 0
  VRes r -> k valueResource (fromIntegral r) 0 nullPtr 0
  VStr _ -> error "unreachable"

withPatches :: [(Word32, Value)] -> (Ptr XtkPropPatch -> Word32 -> IO a) -> IO a
withPatches props k = bracket (patchesNew count) patchesFree (\arr -> go arr 0 props)
  where
    count = fromIntegral (length props)
    go arr _ [] = k arr count
    go arr i ((pid, v) : rest) =
      withValue v (\kind iv dv sp sl -> patchSet arr i pid kind (fromIntegral iv) dv sp sl) >> go arr (i + 1) rest

setProp :: Ctx msg -> Word64 -> Word32 -> Value -> (Word64, Word64) -> IO ()
setProp ctx ctrl pid v (src, rev) = do
  ok <- withValue v (\kind iv dv sp sl -> txnSet (cTxn ctx) ctrl pid kind (fromIntegral iv) dv sp sl src rev)
  when (ok == 0) (throwIO (userError ("set property " ++ show pid ++ " failed")))

subscribe :: Ctx msg -> Ref -> StablePtr (NodeState msg) -> Word32 -> IO Sub
subscribe ctx (kind, value) sp event = do
  fp <- readIORef (rtEventFn (cRt ctx))
  token <- txnOn (cTxn ctx) kind value event fp (castStablePtrToPtr sp)
  when (token == maxBound) (throwIO (userError ("subscribe event " ++ show event ++ " failed")))
  pure (Sub event True token 0)

wanted :: El msg -> [Word32]
wanted e = map fst (elHandlers e) ++ [eventRealize | isJust (elItems e)]

create :: Ctx msg -> El msg -> Ref -> Ref -> IO (Node msg)
create ctx el (pk, pv) (bk, bv) = do
  let e = realize Nothing el
  local <- withPatches (elProps e) (txnCreate (cTxn ctx) (elTy e) pk pv bk bv)
  when (local == maxBound) (throwIO (userError ("create control type " ++ show (elTy e) ++ " failed")))
  st <- NodeState <$> newIORef (elHandlers e) <*> newIORef Nothing <*> newIORef (0, 0) <*> newIORef 0
  sp <- newStablePtr st
  let me = (refLocal, fromIntegral local)
  subs <- mapM (subscribe ctx me sp) (wanted e)
  kids <- mapM (\k -> create ctx k me (refNone, 0)) (elKids e)
  pure (Node 0 (Just local) (elTy e) (elKey e) (elProps e) subs kids st sp)

forced :: Node msg -> IO (S.Set Word32)
forced node = do
  mask <- atomicModifyIORef' (nsUser (nState node)) (\m -> (0, m))
  fmap S.unions . forM (filter (testBit mask) [1 .. 31]) $ \event ->
    allocaArray mirrorMax $ \out -> do
      n <- catalogMirrors (nTy node) (fromIntegral event) out
      S.fromList <$> peekArray (fromIntegral n) out

update :: Ctx msg -> Node msg -> El msg -> IO (Node msg)
update ctx node el = do
  let st = nState node
  window <- readIORef (nsWindow st)
  let e = realize window el
  echo <- readIORef (nsEcho st)
  force <- forced node
  forM_ (elProps e) $ \(pid, v) ->
    case lookup pid (nProps node) of
      Just old | same old v && not (S.member pid force) -> pure ()
      _ -> setProp ctx (nCtrl node) pid v echo
  forM_ (nProps node) $ \(pid, old) ->
    unless (isJust (lookup pid (elProps e))) (setProp ctx (nCtrl node) pid (reset pid old) (0, 0))
  writeIORef (nsHandlers st) (elHandlers e)
  let want = wanted e
  forM_ (nSubs node) $ \s ->
    when (subEvent s `notElem` want && not (subPending s)) (() <$ txnOff (cTxn ctx) (subId s))
  let kept = filter ((`elem` want) . subEvent) (nSubs node)
  added <- mapM (subscribe ctx (refExisting, nCtrl node) (nStable node)) (filter (`notElem` map subEvent kept) want)
  kids <- reconcileKids ctx (nKids node) (elKids e) (nCtrl node)
  pure node {nKey = elKey e, nProps = elProps e, nSubs = kept ++ added, nKids = kids}

assign :: [Node msg] -> [El msg] -> [Maybe Int]
assign old new = go new unkeyed
  where
    indexed = zip [0 ..] old
    keyed = M.fromList [((k, nTy n), i) | (i, n) <- indexed, Just k <- [nKey n]]
    unkeyed = [i | (i, n) <- indexed, nKey n == Nothing]
    go [] _ = []
    go (e : es) free = case elKey e of
      Just k -> M.lookup (k, elTy e) keyed : go es free
      Nothing -> case free of
        (i : rest) -> (if nTy (old !! i) == elTy e then Just i else Nothing) : go es rest
        [] -> Nothing : go es []

reconcileKids :: Ctx msg -> [Node msg] -> [El msg] -> Word64 -> IO [Node msg]
reconcileKids ctx old new parentCtrl = do
  let slots = assign old new
      taken = S.fromList [i | Just i <- slots]
  (_, _, out) <- foldM step ((refNone, 0), maxBound :: Int, []) (reverse (zip new slots))
  forM_ (zip [0 ..] old) $ \(i, n) -> unless (S.member i taken) $ do
    _ <- txnDrop (cTxn ctx) (nCtrl n)
    modifyIORef' (cGrave ctx) (n :)
  pure out
  where
    parentRef = (refExisting, parentCtrl)
    step (next, minAfter, acc) (e, Nothing) = do
      n <- create ctx e parentRef next
      pure (target n, minAfter, n : acc)
    step ((nk, nv), minAfter, acc) (e, Just i) = do
      n <- update ctx (old !! i) e
      minAfter' <-
        if i < minAfter
          then pure i
          else do
            let (ck, cv) = target n
            _ <- txnMove (cTxn ctx) parentCtrl ck cv nk nv
            pure minAfter
      pure (target n, minAfter', n : acc)

resolve :: Ptr XtkBatchResult -> Node msg -> IO (Node msg)
resolve res n = do
  ctrl <- maybe (pure (nCtrl n)) (resultControl res) (nLocal n)
  subs <- forM (nSubs n) $ \s ->
    if subPending s then (\i -> s {subPending = False, subId = i}) <$> resultSub res (subToken s) else pure s
  kids <- mapM (resolve res) (nKids n)
  pure n {nCtrl = ctrl, nLocal = Nothing, nSubs = subs, nKids = kids}

release :: Node msg -> IO ()
release n = mapM_ release (nKids n) >> freeStablePtr (nStable n)

data Theme = ThemeSystem | ThemeLight | ThemeDark
  deriving (Eq, Show)

data Window = Window {title :: String, width :: Int, height :: Int, theme :: Theme}

defaultWindow :: Window
defaultWindow = Window "hsxent" 960 640 ThemeSystem

run :: Window -> model -> (msg -> model -> model) -> (model -> El msg) -> IO ()
run w model0 upd view = runInBoundThread . withCWString (title w) $ \t -> do
  let mode = case theme w of
        ThemeSystem -> themeSystem
        ThemeLight -> themeLight
        ThemeDark -> themeDark
  app <- appCreate t (fromIntegral (width w)) (fromIntegral (height w)) mode
  unless (app == nullPtr) $ do
    host <- appAttachHost app
    if host == nullPtr then appDestroy app else session app host
  where
    session app host = do
      scene <- sceneNew host
      root <- sceneRoot scene
      rt <- Rt <$> newIORef [] <*> newIORef True <*> newIORef app <*> newIORef nullFunPtr
      eventFp <- mkEventFn (trampoline rt)
      writeIORef (rtEventFn rt) eventFp
      modelRef <- newIORef model0
      treeRef <- newIORef Nothing
      frameFp <- mkFrameFn (\_ -> frame rt scene root modelRef treeRef `catch` report)
      appOnFrame app frameFp nullPtr
      appRedraw app
      _ <- appRun app
      appOnFrame app nullFunPtr nullPtr
      writeIORef (rtApp rt) nullPtr
      hostDestroy host
      appDestroy app
      sceneFree scene
      readIORef treeRef >>= mapM_ release
    frame rt scene root modelRef treeRef = do
      msgs <- atomicModifyIORef' (rtQueue rt) (\q -> ([], reverse q))
      modifyIORef' modelRef (\m -> foldl (flip upd) m msgs)
      dirty <- readIORef (rtDirty rt)
      tree <- readIORef treeRef
      unless (null msgs && not dirty && isJust tree) $ do
        writeIORef (rtDirty rt) False
        top <- view <$> readIORef modelRef
        txn <- txnBegin scene
        when (txn == nullPtr) (throwIO (userError "begin transaction failed"))
        grave <- newIORef []
        let ctx = Ctx rt txn grave
        nodes <- reconcileKids ctx (maybeToList tree) [top] root `onException` (txnAbort txn >> writeIORef (rtDirty rt) True)
        allocaArray 3 $ \diag -> do
          res <- txnCommit txn diag
          when (res == nullPtr) $ do
            d <- peekArray 3 diag
            throwIO (userError ("commit failed: stage/error/op " ++ show d))
          node <- resolve res (head nodes)
          resultDestroy res
          writeIORef treeRef (Just node)
        readIORef grave >>= mapM_ release
