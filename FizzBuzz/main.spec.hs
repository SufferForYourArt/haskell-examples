module Test where

import App
import Test.QuickCheck

fizz = "fizz"
buzz = "buzz"
fizzbuzz = fizz ++ buzz

prop_fizzleMaBizzle :: Int -> Bool
prop_fizzleMaBizzle x = case fizzleMaBizzle x of
                        "fizz"     -> fizzleMaBizzle (x * 3) == fizz &&
                                      fizzleMaBizzle (x * 5) == fizzbuzz &&
                                      fizzleMaBizzle (x * 3 * 5) == fizzbuzz

                        "buzz"     -> fizzleMaBizzle (x * 3) == fizzbuzz &&
                                      fizzleMaBizzle (x * 5) == buzz &&
                                      fizzleMaBizzle (x * 3 * 5) == fizzbuzz

                        "fizzbuzz" -> fizzleMaBizzle (x * 3) == fizzbuzz &&
                                      fizzleMaBizzle (x * 5) == fizzbuzz &&
                                      fizzleMaBizzle (x * 3 * 5) == fizzbuzz

                        result     -> (read result :: Int) == x &&
                                      fizzleMaBizzle (x * 3) == fizz &&
                                      fizzleMaBizzle (x * 5) == buzz &&
                                      fizzleMaBizzle (x * 3 * 5) == fizzbuzz

test = quickCheck prop_fizzleMaBizzle
