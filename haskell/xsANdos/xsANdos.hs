module Codewars.Kata.XO where

-- | Returns true if the number of
-- Xs is equal to the number of Os
-- (case-insensitive)
xo :: String -> Bool
xo str = countX str == countO str

countX input = foldl (\x y -> (if y == 'x' || y == 'X' then (succ x) else x)) 0 input
countO input = foldl (\x y -> (if y == 'o' || y == 'O' then (succ x) else x)) 0 input
