import Graphics.Element exposing (show)
import List exposing (length, filter, map)


{-Type aliases can be used to create record types in Elm -}

type alias Person
  = {fname: String, lname: String, age: Int}
  
p1 =  {fname= "JK", lname= "Rowling", age= 24}
p2 =  {fname= "Anakin", lname= "Luke", age= 25 }



main = 
  show [p1.fname]
