module Middle where

-- | Return the index of the middle element.
--   The first element has index 0.
gimme :: Ord a => (a, a, a) -> Int
gimme (a, b, c)
  | medioA (a, b, c) = 0
  | medioB (a, b, c) = 1
  | medioC (a, b, c) = 2
  | otherwise  = -1

medioA (a, b, c) = (a > b && a < c) || (a > c && a < b)

medioB (a, b, c) = (b > a && b < c) || (b > c && b < a)

medioC (a, b, c) = (c > a && c < b) || (c > b && c < a)
