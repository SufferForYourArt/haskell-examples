main = mapM_ putStrLn (map fizz [1..100])

fizz x = if (mod x 3 == 0 && mod x 5 /= 0) then "fizz" else buzz x
buzz x = if (mod x 3 /= 0 && mod x 5 == 0) then "buzz" else fizzBuzz x
fizzBuzz x = if (mod x 3 == 0 && mod x 5 == 0) then "fizzbuzz" else show x
