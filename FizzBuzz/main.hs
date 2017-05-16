module App where

import Data.Generics.Aliases

main = mapM putStrLn (map fizzleMaBizzle [1..100])

fizzleMaBizzle :: Int -> String
fizzleMaBizzle x
  | x `isDivisableBy` 15 = "fizzbuzz"
  | x `isDivisableBy` 3  = "fizz"
  | x `isDivisableBy` 5  = "buzz"
  | otherwise            = show x

isDivisableBy :: Int -> Int -> Bool
isDivisableBy x y = x `mod` y == 0
