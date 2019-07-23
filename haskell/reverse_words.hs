module ReverseWords where

reverseWords :: [Char] -> [Char]
reverseWords = unwords . reverse . words
