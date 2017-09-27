module Tribonacci where

last3 xs = [last xs] ++ [last(init xs)] ++ [last(init(init xs))]
sumLast3 xs = sum(last3 xs)

tribonacci :: Num a => (a, a, a) -> Int -> [a]
tribonacci (a, b, c) 0 = []
tribonacci (a, b, c) n = take n (recursive n [a, b, c])

recursive n list
  | n == 0 = list
  | otherwise = recursive (pred n) (list ++ [sumLast3 list])
