module JadenCasingStrings where
import Data.Char (toUpper)

capitalize(w:ord) = toUpper(w):ord

toJadenCase :: String -> String
toJadenCase = unwords . map capitalize . words
