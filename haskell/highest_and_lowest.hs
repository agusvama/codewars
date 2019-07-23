module HighestAndLowest where
import Data.Char

{-
ntl xs ys
  | length xs == 0 = ys
  | isDigit(head xs) = ntl (tail xs) (ys ++ [digitToInt(head xs)])
  | head xs == ' ' = ntl (tail xs) ys
  | head xs == '-' = ntl (tail(tail xs)) (ys ++ [negate(digitToInt(head(tail xs)))])
-}

--"4 5 29 54 4 0 -214 542 -64 1 -3 6 -6" shouldBe "542 -214"

--convert from string to list of numbers
--this first try won't work for cases like:
--"4 5 29 54 4 0 -214 542 -64 1 -3 6 -6" :(
ntl :: [Char] -> [Int] -> [Int]
ntl [] ys = ys
ntl (' ':xs) ys = ntl xs ys
ntl ('-':x:xs) ys = ntl xs ( ys ++ [-(digitToInt x)] )
ntl (x:xs) ys = ntl xs ( ys ++ [digitToInt x] )

highAndLow :: [Char] -> [Char]
highAndLow s = high s ++ " " ++ low s

                       --from here, this code is repeated
high  = show . maximum . map (\x -> read x :: Integer) . words
low   = show . minimum . map (\x -> read x :: Integer) . words
