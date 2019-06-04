module Codewars.Kata.XO where
import Data.Char (toUpper)

xo :: String -> Bool
xo str = character_counter 'x' str == character_counter 'o' str

character_counter :: Char -> [Char] -> Int
character_counter c = length . filter (\x -> x == c || x == toUpper c)


