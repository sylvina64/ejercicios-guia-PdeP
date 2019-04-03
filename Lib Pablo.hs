module Lib
    ( someFunc,  cuadr
    ) where

someFunc :: IO ()
someFunc = putStrLn "someFunc"

cuadr :: Int -> Int
cuadr numero = numero*numero