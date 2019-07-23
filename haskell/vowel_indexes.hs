module VowelIndexes where

--NOTE: Vowels in this context refers to English Language Vowels - a e i o u y
vowelIndices :: String -> [Integer]
vowelIndices = map fst . filter (\(x, y) -> elem y vowels) . zip [1..]
vowels = "aeiouyAEIOUY"
