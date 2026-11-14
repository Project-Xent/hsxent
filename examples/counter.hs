import qualified Data.Text as T
import qualified Xent as X
import qualified Xent.Attr as A

data Msg = Inc | Dec | Reset

newtype Model = Model {count :: Int}

update :: Msg -> Model -> Model
update Inc m = m {count = count m + 1}
update Dec m = m {count = count m - 1}
update Reset _ = Model 0

view :: Model -> X.El Msg
view m =
  X.container
    [A.dir X.StackDirectionColumn, A.grow 1, A.gap 16, A.pl 32, A.pt 32, A.pr 32, A.pb 32, A.items X.FlexAlignStart]
    [ X.text [A.text (T.pack "Counter"), A.fontsize 28, A.fontweight X.FontWeightSemiBold] []
    , X.text [A.text (T.pack ("Value: " ++ show (count m))), A.fontsize 20] []
    , X.container
        [A.dir X.StackDirectionRow, A.gap 8, A.items X.FlexAlignCenter]
        [ X.button [A.text (T.pack "−"), A.w 48, A.onInvoke Dec] []
        , X.button [A.text (T.pack "+"), A.w 48, A.style X.ButtonStyleAccent, A.onInvoke Inc] []
        , X.button [A.text (T.pack "Reset"), A.style X.ButtonStyleSubtle, A.onInvoke Reset] []
        ]
    ]

main :: IO ()
main = X.run X.defaultWindow {X.title = "hsxent counter"} (Model 0) update view
