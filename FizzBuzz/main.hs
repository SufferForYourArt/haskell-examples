module App where

main = mapM_ putStrLn (map fuzzlebuzzle [1..100])

fuzzlebuzzle :: Int -> String
fuzzlebuzzle x = fizzBuzz x
fizzBuzz x = if (db3 x && db5 x) then "fizzbuzz" else fizz x
fizz x = if db3 x then "fizz" else buzz x
buzz x = if db5 x then "buzz" else show x

db3 :: Int -> Bool
db3 x = mod x 3 == 0

db5 :: Int -> Bool
db5 x = mod x 5 == 0
