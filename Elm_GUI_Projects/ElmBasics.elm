module Elmbasics where
import Html exposing (Html, li, text, ul, div)
import Graphics.Element exposing (show)
import Mouse

factorial: number -> number
factorial n =
  case n of
     0 -> 1
     1 -> 1
     _ -> n * factorial (n-1)

{-
length is a function which takes in a list of any type
and returns the number of elements in that list
-}
length: List a -> number
length list =
  case list of
    [] ->
      0
    first :: rest ->
      1 + length rest

merge: List a -> List b -> List(a,b)
merge xs ys =
  case (xs, ys) of
    (x :: xs', y :: ys') ->
      (x, y) :: merge xs' ys'

    (_, _) ->
      []


add1: number -> number
add1 x=
  x + 1

{-
show converts anything to its textual representation and makes it displayable in the browser
show: a->Element
-}
main: Signal Html
main =
  Signal.map Html.fromElement <| Signal.map show Mouse.isDown
