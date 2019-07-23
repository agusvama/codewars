module Codewars.G964.Printer where

printerError :: [Char] -> [Char]
printerError s = (show . length . filter (> 'm')) s  ++ "/" ++ (show . length) s
