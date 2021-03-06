module ElmBasics where


{- This is type annotation-}
square : Int -> Int

square x =
  x * x

y : Int
y = 5


fib : Int -> Int
{- Pattern matching in Elm based on the value-}
fib n = 
  case n of
    0 -> 1
    1 -> 1
    _ -> fib (n-1) + fib (n-2)

add : Int -> Int -> Int
add x y =
  x + y


{- Pattern matching in Elm based on the value-}
factorial : Int -> Int
factorial n =
  case n of
    0 -> 1
    1 -> 1
    _ -> n * factorial(n-1)

{- Summing all the elements in a list recursively -}
sumList : List Int -> Int
sumList xs =
    case xs of
      [] ->
          0
      first :: rest ->
          first + (sumList rest)

{-The  |> operator helps us reducee too much parenthese
It is defined like this:

    x |> f = f x

So as soon as we evaluate 'x' we hand it to the function 'f' and
keep going.-}
