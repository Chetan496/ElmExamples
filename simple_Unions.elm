import Graphics.Element exposing (show)
import List exposing (length, filter, map)


{- 
We are going to create a Union for the 'Person' type
-}
type Person 
  = Person (String, String, Int)

p1 = Person ("MAc", "sdf", 23)
p2 = Person ("chetan", "yewale", 24)


people : List Person
people = [
            Person ("CJ", "Date", 24),
            Person ("DJ", "PJ", 30),
            Person ("NJ", "Y", 23)
         ]
  
  
main =
  show [ people
       ]
