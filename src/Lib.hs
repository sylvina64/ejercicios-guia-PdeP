module Lib
    ( someFunc, cuadrado, cubo, areaRectangulo, celsiusToFahr, fahrToCelsius, 
    esMultiploDeTres, esMultiploDe
    ) where

someFunc :: IO ()
someFunc = putStrLn "someFunc"


cuadrado :: Int -> Int
cuadrado numero = numero*numero

cubo :: Int -> Int
cubo numero = numero*numero*numero

areaRectangulo :: Int -> Int -> Int
areaRectangulo base altura = base*altura

celsiusToFahr :: Int -> Int
celsiusToFahr gradosCelsius=(div (gradosCelsius*9) 5)+32

fahrToCelsius :: Int -> Int
fahrToCelsius gradosFahr=(div ((gradosFahr-32)*5) 9)

esMultiploDeTres :: Int -> Bool
esMultiploDeTres numero = ((mod numero 3)==0)

esMultiploDe :: Int -> Int -> Bool
esMultiploDe primerNumero segundoNumero = mod segundoNumero primerNumero ==0