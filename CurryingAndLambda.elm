module CurryingAndLambda where


add x y =
  x + y


{- We are creating a curried function-}
addTofive = add 5


{- This is  how we create an anonymous function and use it. The syntax is similar to Haskell-}
