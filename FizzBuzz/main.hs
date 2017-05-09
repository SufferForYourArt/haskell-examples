module App where

main = mapM_ putStrLn (map fizzleMaBizzle [1..100])

fizzleMaBizzle :: Int -> String
fizzleMaBizzle x = fizzBuzz x
fizzBuzz x = if x `divisable` 15 then "fizzbuzz" else fizz x
fizz x = if x `divisable` 3 then "fizz" else buzz x
buzz x = if x `divisable` 5 then "buzz" else show x

divisable :: Int -> Int -> Bool
divisable x y = x `mod` y == 0