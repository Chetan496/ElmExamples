import Graphics.Element exposing (show)
import List exposing (length, filter, map)

{- We are defining  a contract for the employee record.
Note that defining a contract is not necessary-}
employee : {id: Int, name: String, age: Int, designation: String}

employee = {id = 1, name = "Mac", age = 24, designation = "Software Engineer"}
employee2 = {id = 2, name = "DJ", age = 25, designation = "Lecturer"}


employees = [{id = 1, name = "Mac", age = 24, designation = "Software Engineer"}, 
             {id = 2, name = "DJ", age = 25, designation = "Lecturer"},
             {id = 3, name = "Jack", age = 26, designation = "Artist"}
             ]


people = [{fname= "Chetan", lname= "Yewale", age= 26, country= "India"},
          {fname= "Jennifer", lname= "Lopez", age= 26, country= "US"},
          {fname= "Emanuelle", lname= "Luisa", age= 25, country= "France"}
         ]

{- 
isOlderThan is a function which takes an Int. (we are comparing his age against it.)
It also takes a record as an input, the record should have a field called "age" and 
should be Int.
It does not matter what other fields are present in the record, our function
operates on all types of records which have an 'age' field.
This is also known as "Patter Matching" on the records by some field.
Defining a contract for a function is also not necessary

-}
isOlderThan : Int -> {record | age : Int} -> Bool
isOlderThan x employee = 
  employee.age > x


employeeNames = List.map .name employees
employeeDesignations = List.map .designation employees
employeeIds = List.map .id employees
employeesOlderThan25 = List.filter (isOlderThan 25 ) employees
exployeesOlderThan24 = List.filter (isOlderThan 24) employees

peopleOlderThan25 = List.filter (isOlderThan 25) people

main =
  show [peopleOlderThan25
       ]
  
