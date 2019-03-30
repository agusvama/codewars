module Codewars.G964.Printer where

printerError :: [Char] -> [Char]
printerError s = (show . length . filter (\s -> elem s ['n'..'z']) ) s  ++ "/" ++ (show . length) s
