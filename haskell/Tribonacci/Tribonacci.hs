module Tribonacci where

last3 xs = [last xs] ++ [last(init xs)] ++ [last(init(init xs))]
sumLast3 xs = sum(last3 xs)

tribonacci :: Num a => (a, a, a) -> Int -> [a]
tribonacci (a, b, c) n = recursive 3 n [a, b, c]
  where recursive start end list
          | start == end = list
          | end == 0 = []
          | otherwise = recursive (succ start) n (list ++ [sumLast3 list])
