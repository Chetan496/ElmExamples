module LetExpressions where
   
{-
An example of a let expression.
In a let expression you can define temporary variables or functions.
Then you can use those in an expression and compute some value
The scope of those functions names or variables is limited to the let expression.

Let expressions are used in a lot of functional programming languages including F#, ML, OCaml etc.
They are similar to the concept of 'let' used in Mathematical terminology eg: let x = 5, y =6 in x+y

Note that In Elm, the let expression is indentation-sensitive.
It means that each declaration of a variable should be aligned with the previous declaration.

The value of the let expression needs to be assigned to some variable.
-}


hypotenuse =
  let x = 3
      y = 4
      square n = n * n
  in
      square x + square y |> sqrt
        
{- 
square is not accessible here. Neither are x and y
Note that the 'in' part could also be writen as:  

sqrt <| square x + square y

-}


cube x = x * x * x
