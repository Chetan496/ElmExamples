import Graphics.Element exposing (show)

{- Enumerations in Elm-}
{- we have defined a type called 'Gender' with exactly two possible states -}
type Gender = Male | Female
type Age = Int

{- Person is now a 'tagged Union' a union of different data types -}
type Person = Gender Age


p : Person



main = 
  show [ 
  ]
