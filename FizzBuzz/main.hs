module App where

import Data.Generics.Aliases

main = mapM putStrLn (map fizzleMaBizzle [1..100])

fizzleMaBizzle :: Int -> String
fizzleMaBizzle x = unwrap (fizzBuzz x `orElse` fizz x `orElse` buzz x `orElse` none x)

fizz :: Int -> Maybe String
fizz x = case x `divisable` 3 of
            True  -> Just "fizz"
            False -> Nothing``

buzz :: Int -> Maybe String
buzz x = case x `divisable` 5 of
            True  -> Just "buzz"
            False -> Nothing

fizzBuzz :: Int -> Maybe String
fizzBuzz x = case x `divisable` 15 of
                True  -> Just "fizzbuzz"
                False -> Nothing

none :: Int -> Maybe String
none x = Just (show x)

unwrap :: Maybe String -> String
unwrap (Just x) = x

divisable :: Int -> Int -> Bool
divisable x y = x `mod` y == 0