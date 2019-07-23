module ReverseRecursively where

revR :: [Int] -> [Int]
revR [] = []
revR xs = last xs : revR(init xs)
