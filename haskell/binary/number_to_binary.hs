module NumberToBinary where

binary :: Int -> [Char]
binary 0 = "0"
binary 1 = "1"
binary x = binary(div x 2) ++ show(mod x 2)

binary_sum :: Int -> Int -> [Char]
binary_sum x y = binary ( x + y)

ones :: Int -> Int
ones = length . filter (== '1') . binary

ones' :: Int -> Int
ones' = foldl (\x y -> if y == '1' then succ x else x) 0 . binary 
