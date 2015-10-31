import Graphics.Element exposing (show)
import List exposing (length, filter, map)

type Person 
  = Person {fname: String, lname: String, age: Int}

p1 = Person {fname= "MAc", lname= "sdf", age= 23}
p2 = Person {fname ="chetan", lname="yewale", age=24}

     {-These are unions with fields

      -}

people : List Person
people = [
            p1, p2,
            Person {fname= "Anakin", lname= "Luke", age= 12}
         ]
  
  
main =
  show [ people
       ]
