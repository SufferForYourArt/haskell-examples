module Test where

import App
import Test.QuickCheck

f = "fizz"
b = "buzz"
fb = f ++ b

prop_fuzzlebuzzle :: Int -> Bool
prop_fuzzlebuzzle x = case fuzzlebuzzle x of
                        "fizz"     -> fuzzlebuzzle (x * 3) == f &&
                                      fuzzlebuzzle (x * 5) == fb &&
                                      fuzzlebuzzle (x * 3 * 5) == fb

                        "buzz"     -> fuzzlebuzzle (x * 3) == fb &&
                                      fuzzlebuzzle (x * 5) == b &&
                                      fuzzlebuzzle (x * 3 * 5) == fb

                        "fizzbuzz" -> fuzzlebuzzle (x * 3) == fb &&
                                      fuzzlebuzzle (x * 5) == fb &&
                                      fuzzlebuzzle (x * 3 * 5) == fb

                        _          -> fuzzlebuzzle (x * 3) == f &&
                                      fuzzlebuzzle (x * 5) == b &&
                                      fuzzlebuzzle (x * 3 * 5) == fb

test = quickCheck prop_fuzzlebuzzle
