module Difference where
import Data.Set (fromList, difference)

geese :: [String] -> [String] -> [String]
geese _ [] = []
geese xs (y:ys) = if elem y xs
                  then [] ++ geese xs ys
                  else [y] ++ geese xs ys

geese' xs ys = 
  let set_a = fromList xs
      set_b = fromList ys
  in  difference set_b set_a      
