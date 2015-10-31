import Html exposing (li, text, ul, h3, body, button, input, fromElement, toElement, Html)
import Html.Attributes exposing (class, type', checked, placeholder)
import Signal
import Mouse
import Graphics.Element exposing (..)

isChecked : Bool
isChecked = False

          
main =
  body []
       [

       
  h3 [] [text "Example of HTML controls using Elm."],
  ul [class "chocolates"]
     [
      li [] [text "Dairy Milk"],
      li [] [text "Eclairs"],
      li [] [text "Temptation"],
      li [] [text "Perk"]
            
     ],

  button [] [text "Submit"],
  button [] [text "Cancel"],
  input [type' "radio"] [text "Select one option"],
  input [type' "checkbox", checked isChecked] [text "Do you agree that Elm is cool?"] ,
  input [placeholder "Enter something"] []

     ]
