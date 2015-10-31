module DisplayText where

import Color exposing (blue)
import Graphics.Element exposing (..)
import Text

main =
  Text.fromString "Hello Chetan"
    |> Text.color blue
    |> Text.italic
    |> Text.bold
    |> Text.height 90
    |> leftAligned
