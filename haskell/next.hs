module LazyNext where

next :: Eq a => a -> [a] -> Maybe a
next item [] = Nothing
next item [x] = Nothing
next item (x:xs)
  | elem item (x:xs) == False = Nothing
  | item == x = Just(head xs)
  | otherwise = next item xs
