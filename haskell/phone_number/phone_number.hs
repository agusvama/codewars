module PhoneNumber where
import Text.Printf

createPhoneNumber :: [Int] -> [Char]
createPhoneNumber = foldl (\x y -> x ++ y) "" . format . map show

format :: [[Char]] -> [[Char]]
format (a:b:c:d:e:f:xs) = "(":a:b:c:")":" ":d:e:f:"-":xs

createPhoneNumber' :: [Int] -> String
createPhoneNumber' [a,b,c,d,e,f,g,h,i,j] = printf "(%d%d%d) %d%d%d-%d%d%d%d" a b c d e f g h i j
