{-# LANGUAGE CApiFFI #-}

module Xent.FFI where

#include "xtk/xtk_scene.h"
#include "xtk/xtk_catalog.h"
#include "fluxent/flux_theme.h"

import Data.Int (Int32, Int64)
import Data.Word (Word32, Word64, Word8)
import Foreign.C.String (CWString)
import Foreign.C.Types (CBool (..), CDouble (..), CInt (..))
import Foreign.Ptr (FunPtr, Ptr)
import Foreign.Storable (peekByteOff)

data FluxApp
data XtkHost
data XtkScene
data XtkTxn
data XtkPropPatch
data XtkBatchResult
data XtkEvent

type EventFn = Ptr () -> Ptr XtkEvent -> IO Word32
type FrameFn = Ptr () -> IO ()

refNone, refExisting, refLocal :: CInt
refNone = #{const XTK_REF_NONE}
refExisting = #{const XTK_REF_EXISTING}
refLocal = #{const XTK_REF_LOCAL}

valueBool, valueI32, valueF32, valueF64, valueEnum, valueColor, valueString, valueResource :: CInt
valueBool = #{const XTK_VALUE_BOOL}
valueI32 = #{const XTK_VALUE_I32}
valueF32 = #{const XTK_VALUE_F32}
valueF64 = #{const XTK_VALUE_F64}
valueEnum = #{const XTK_VALUE_ENUM}
valueColor = #{const XTK_VALUE_COLOR}
valueString = #{const XTK_VALUE_STRING}
valueResource = #{const XTK_VALUE_RESOURCE}

ctrlListItem, propWidth, propHeight, propEnabled, propItemCount, propItemHeight, propRealizedFirst :: Word32
ctrlListItem = #{const XTK_CTRL_LISTITEM}
propWidth = #{const XTK_PROP_WIDTH}
propHeight = #{const XTK_PROP_HEIGHT}
propEnabled = #{const XTK_PROP_ENABLED}
propItemCount = #{const XTK_PROP_ITEM_COUNT}
propItemHeight = #{const XTK_PROP_ITEM_HEIGHT}
propRealizedFirst = #{const XTK_PROP_REALIZED_FIRST}

themeSystem, themeLight, themeDark :: CInt
themeSystem = #{const FLUX_THEME_SYSTEM}
themeLight = #{const FLUX_THEME_LIGHT}
themeDark = #{const FLUX_THEME_DARK}

eventRealize :: Word32
eventRealize = #{const XTK_EVENT_REALIZE}

causeUser :: Int32
causeUser = #{const XTK_EVENT_CAUSE_USER}

eventHandled, eventContinue :: Word32
eventHandled = #{const XTK_EVENT_HANDLED}
eventContinue = #{const XTK_EVENT_CONTINUE}

mirrorMax :: Int
mirrorMax = #{const XTK_MIRROR_MAX}

evId :: Ptr XtkEvent -> IO Word32
evId p = #{peek XtkEvent, id} p

evCause :: Ptr XtkEvent -> IO Int32
evCause p = #{peek XtkEvent, cause} p

evChange :: Ptr XtkEvent -> IO (Word64, Word64)
evChange p = (,) <$> #{peek XtkEvent, change.source} p <*> #{peek XtkEvent, change.revision} p

evBool :: Ptr XtkEvent -> IO Bool
evBool p = (/= (0 :: CBool)) <$> #{peek XtkEvent, payload.u.b} p

evI32 :: Ptr XtkEvent -> IO Int32
evI32 p = #{peek XtkEvent, payload.u.i32} p

evF32 :: Ptr XtkEvent -> IO Float
evF32 p = #{peek XtkEvent, payload.u.f32} p

evF64 :: Ptr XtkEvent -> IO Double
evF64 p = #{peek XtkEvent, payload.u.f64} p

evString :: Ptr XtkEvent -> IO (Ptr Word8, Word32)
evString p = (,) <$> #{peek XtkEvent, payload.u.string.data} p <*> #{peek XtkEvent, payload.u.string.len} p

evQuery :: Ptr XtkEvent -> IO (Ptr Word8, Word32, Int32)
evQuery p =
  (,,)
    <$> #{peek XtkEvent, payload.u.query.text} p
    <*> #{peek XtkEvent, payload.u.query.len} p
    <*> #{peek XtkEvent, payload.u.query.index} p

evRating :: Ptr XtkEvent -> IO (Double, Int32)
evRating p = (,) <$> #{peek XtkEvent, payload.u.rating.value} p <*> #{peek XtkEvent, payload.u.rating.count} p

evIndexBool :: Ptr XtkEvent -> IO (Int32, Bool)
evIndexBool p =
  (,) <$> #{peek XtkEvent, payload.u.index_bool.index} p
    <*> ((/= (0 :: CBool)) <$> #{peek XtkEvent, payload.u.index_bool.value} p)

evRange :: Ptr XtkEvent -> IO (Float, Float)
evRange p = (,) <$> #{peek XtkEvent, payload.u.range.start} p <*> #{peek XtkEvent, payload.u.range.end} p

evWindow :: Ptr XtkEvent -> IO (Int32, Int32, Int32)
evWindow p =
  (,,)
    <$> #{peek XtkEvent, payload.u.window.first} p
    <*> #{peek XtkEvent, payload.u.window.last} p
    <*> #{peek XtkEvent, payload.u.window.lanes} p

evScroll :: Ptr XtkEvent -> IO (Float, Float, Float, Float)
evScroll p =
  (,,,)
    <$> #{peek XtkEvent, payload.u.scroll.x} p
    <*> #{peek XtkEvent, payload.u.scroll.y} p
    <*> #{peek XtkEvent, payload.u.scroll.max_x} p
    <*> #{peek XtkEvent, payload.u.scroll.max_y} p



foreign import ccall unsafe "hsx_scene_new" sceneNew :: Ptr XtkHost -> IO (Ptr XtkScene)
foreign import ccall unsafe "hsx_scene_free" sceneFree :: Ptr XtkScene -> IO ()
foreign import ccall unsafe "xtk_scene_root" sceneRoot :: Ptr XtkScene -> IO Word64
foreign import ccall unsafe "hsx_txn_begin" txnBegin :: Ptr XtkScene -> IO (Ptr XtkTxn)
foreign import ccall safe "hsx_txn_commit" txnCommit :: Ptr XtkTxn -> Ptr Int32 -> IO (Ptr XtkBatchResult)
foreign import ccall unsafe "hsx_txn_abort" txnAbort :: Ptr XtkTxn -> IO ()
foreign import ccall unsafe "hsx_patches" patchesNew :: Word32 -> IO (Ptr XtkPropPatch)
foreign import ccall unsafe "free" patchesFree :: Ptr XtkPropPatch -> IO ()
foreign import ccall unsafe "hsx_patch"
  patchSet :: Ptr XtkPropPatch -> Word32 -> Word32 -> CInt -> Int64 -> CDouble -> Ptr Word8 -> Word32 -> IO ()
foreign import ccall unsafe "hsx_create"
  txnCreate :: Ptr XtkTxn -> Word32 -> CInt -> Word64 -> CInt -> Word64 -> Ptr XtkPropPatch -> Word32 -> IO Word32
foreign import ccall unsafe "hsx_set"
  txnSet :: Ptr XtkTxn -> Word64 -> Word32 -> CInt -> Int64 -> CDouble -> Ptr Word8 -> Word32 -> Word64 -> Word64 -> IO CBool
foreign import ccall unsafe "hsx_drop" txnDrop :: Ptr XtkTxn -> Word64 -> IO CBool
foreign import ccall unsafe "hsx_move" txnMove :: Ptr XtkTxn -> Word64 -> CInt -> Word64 -> CInt -> Word64 -> IO CBool
foreign import ccall unsafe "hsx_on"
  txnOn :: Ptr XtkTxn -> CInt -> Word64 -> Word32 -> FunPtr EventFn -> Ptr () -> IO Word32
foreign import ccall unsafe "xtk_txn_off" txnOff :: Ptr XtkTxn -> Word64 -> IO CBool
foreign import ccall unsafe "hsx_result_control" resultControl :: Ptr XtkBatchResult -> Word32 -> IO Word64
foreign import ccall unsafe "hsx_result_sub" resultSub :: Ptr XtkBatchResult -> Word32 -> IO Word64
foreign import ccall unsafe "xtk_batchresult_destroy" resultDestroy :: Ptr XtkBatchResult -> IO ()
foreign import ccall unsafe "xtk_catalog_mirrors" catalogMirrors :: Word32 -> Word32 -> Ptr Word32 -> IO Word32
foreign import ccall unsafe "hsx_app_create" appCreate :: CWString -> CInt -> CInt -> CInt -> IO (Ptr FluxApp)
foreign import ccall unsafe "flux_app_attachhost" appAttachHost :: Ptr FluxApp -> IO (Ptr XtkHost)
foreign import ccall unsafe "flux_app_destroy" appDestroy :: Ptr FluxApp -> IO ()
foreign import ccall unsafe "flux_host_destroy" hostDestroy :: Ptr XtkHost -> IO ()
foreign import ccall unsafe "flux_app_redraw" appRedraw :: Ptr FluxApp -> IO ()
foreign import ccall unsafe "flux_app_onframe" appOnFrame :: Ptr FluxApp -> FunPtr FrameFn -> Ptr () -> IO ()
foreign import ccall safe "flux_app_run" appRun :: Ptr FluxApp -> IO CInt
foreign import ccall "wrapper" mkEventFn :: EventFn -> IO (FunPtr EventFn)
foreign import ccall "wrapper" mkFrameFn :: FrameFn -> IO (FunPtr FrameFn)
