module Test where

import App
import Test.QuickCheck

f = "fizz"
b = "buzz"
fb = f ++ b

prop_fizzleMaBizzle :: Int -> Bool
prop_fizzleMaBizzle x = case fizzleMaBizzle x of
                        "fizz"     -> fizzleMaBizzle (x * 3) == f &&
                                      fizzleMaBizzle (x * 5) == fb &&
                                      fizzleMaBizzle (x * 3 * 5) == fb

                        "buzz"     -> fizzleMaBizzle (x * 3) == fb &&
                                      fizzleMaBizzle (x * 5) == b &&
                                      fizzleMaBizzle (x * 3 * 5) == fb

                        "fizzbuzz" -> fizzleMaBizzle (x * 3) == fb &&
                                      fizzleMaBizzle (x * 5) == fb &&
                                      fizzleMaBizzle (x * 3 * 5) == fb

                        result     -> (read result :: Int) == x &&
                                      fizzleMaBizzle (x * 3) == f &&
                                      fizzleMaBizzle (x * 5) == b &&
                                      fizzleMaBizzle (x * 3 * 5) == fb

test = quickCheck prop_fizzleMaBizzle