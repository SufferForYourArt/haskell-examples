module Codewars.BuildTower where

buildTower :: Int -> [String]
buildTower x = map (getFloor x) [1..x]

getFloor :: Int -> Int -> String
getFloor total n = (getPadding total n) ++ (getColumns n) ++ (getPadding total n)

getPadding :: Int -> Int -> String
getPadding total n = duplicate (total - n) " "

getColumns :: Int -> String
getColumns n = duplicate (2 * n - 1) "*"

duplicate :: Int -> String -> String
duplicate n str = concat $ replicate n str
