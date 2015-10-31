module HelloElm where

import Html exposing (li, text, ul)
import Html.Attributes exposing (class)

main =
  ul [class "grocery-list"]
    [ li [] [text "Pamplemousse"]
    , li [] [text "Ananas"]
    , li [] [text "Jus d'orange"]
    , li [] [text "Boeuf"]
    , li [] [text "Soup du jour"]
    , li [] [text "Camembert"]
    , li [] [text "Jacque Cousteau"]
    , li [] [text "Baguette"]
    ]
