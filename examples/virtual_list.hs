import qualified Data.Text as T
import qualified Xent as X
import qualified Xent.Attr as A

newtype Msg = Select Int

newtype Model = Model {selected :: Int}

update :: Msg -> Model -> Model
update (Select i) _ = Model i

row :: Int -> X.El Msg
row i =
  X.container
    [A.dir X.StackDirectionRow, A.gap 12, A.items X.FlexAlignCenter]
    [ X.text [A.text (T.pack (show i)), A.w 72, A.fontsize 12] []
    , X.text [A.text (T.pack ("Item number " ++ show i)), A.fontsize 14] []
    ]

view :: Model -> X.El Msg
view m =
  X.container
    [A.dir X.StackDirectionColumn, A.grow 1, A.gap 12, A.pl 32, A.pt 32, A.pr 32, A.pb 32]
    [ X.text [A.text (T.pack "100,000 rows"), A.fontsize 28, A.fontweight X.FontWeightSemiBold] []
    , X.text [A.text (T.pack status)] []
    , X.list
        [ A.grow 1, A.itemh 40, A.mode X.ListSelModeSingle, A.sel (fromIntegral (selected m))
        , A.onSelect (Select . fromIntegral), A.virtualItems 100000 row ]
        []
    ]
  where
    status = if selected m >= 0 then "Selected row: " ++ show (selected m) else "Nothing selected yet."

main :: IO ()
main = X.run X.defaultWindow {X.title = "hsxent virtual list"} (Model (-1)) update view
