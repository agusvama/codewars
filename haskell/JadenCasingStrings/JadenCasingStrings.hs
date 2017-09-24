module JadenCasingStrings where
import Data.Char

capitalizeWord word = toUpper(head(word)):tail(word)
-- capitalizeWord (x:xs)= toUpper x:xs

wordsOfSentence sentence = words sentence

capitalizeWordsOfArray array = map capitalizeWord array

arrayToSentence array = recursive array ""
  where recursive arr output
          | null arr = init output
          | otherwise = recursive (tail arr) (output ++ (head arr) ++ " ")
--arrayToSentence array = unwords array

toJadenCase :: String -> String
toJadenCase js = arrayToSentence(
  capitalizeWordsOfArray(
    wordsOfSentence(js)))
-- toJadenCase js = arrayToSentence . capitalizeWordsOfArray . wordsOfSentence $ js
-- toJadenCase js = arrayToSentence $ capitalizeWordsOfArray $ wordsOfSentence $ js

-- main = putStrLn(toJadenCase("story of my life"))
