import Graphics.Element exposing (show)
import List exposing (map, foldl)

add x y =
  x + y


{- This is  known as folding i.e reducing a list according to some function
There are also specialized folding functions like sum, product, all, any, maximum-}
main = 
  show [ 
    foldl (add) 3 [2, 1, 4]
  ]
  
  
  
  
