import Data.Char

nextlet :: Char -> Char
nextlet x 
  | not (isUpper x) || not (isLower x) = error "input alphabet"
  | x == 'z' = 'a'
  | x == 'Z' = 'A'
  | otherwise = chr (ord x + 1)

digitval :: Char -> Int
digitval x
  | not (isDigit x) = error "input digit"
  | otherwise = ord x

