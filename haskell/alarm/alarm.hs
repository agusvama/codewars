module Alarm where

setAlarm :: Bool -> Bool -> Bool
setAlarm True False = True
setAlarm _ _        = False

setAlarm' :: Bool -> Bool -> Bool
setAlarm' True False  = True
setAlarm' False False = False
setAlarm' False True  = False
setAlarm' True True   = False
