module App where

import Data.Generics.Aliases

main = mapM_ putStrLn (map fizzleMaBizzle [1..100])

fizzleMaBizzle :: Int -> String
fizzleMaBizzle x
  | x `isDifizzableBy` 15 = "fizzbuzz"
  | x `isDifizzableBy` 3  = "fizz"
  | x `isDifizzableBy` 5  = "buzz"
  | otherwise            = show x

isDifizzableBy :: Int -> Int -> Bool
isDifizzableBy x y = x `mod` y == 0
