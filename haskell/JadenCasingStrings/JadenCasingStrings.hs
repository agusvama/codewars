module JadenCasingStrings where
import Data.Char (toUpper)

capitalizeWord (w:ord) = toUpper(w):ord
-- capitalizeWord (x:xs)= toUpper x:xs

wordsOfSentence = words 

capitalizeWordsOfArray = map capitalizeWord 

arrayToSentence = foldl (\x y -> x ++ y ++ " ") ""

toJadenCase :: String -> String
toJadenCase = init . arrayToSentence . capitalizeWordsOfArray . wordsOfSentence
