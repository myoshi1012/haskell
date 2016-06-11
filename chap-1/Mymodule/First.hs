module Mymodule.First
( square
, quad
, greater
, greater2
, circle
) where

-- prepare
square :: Float -> Float
square x = x * x

-- 1
quad :: Float -> Float
quad = square . square

-- -- *Main> quad 2
-- -- 16

-- 2
greater :: (Integer,Integer) -> Integer
greater (x,y) = if x > y then x else y

-- -- *Main> greater (4,5)
-- -- 5
-- -- *Main> greater (5,4)
-- -- 5

-- 2.5
greater2 :: Integer -> (Integer -> Integer)
greater2 x y = if x > y then x else y

-- -- *Main> greater2 4 5
-- -- 5
-- -- *Main> greater2 5 4
-- -- 5

-- 3
circle :: Float -> Float
circle r = r * r * pi
  where pi = 22 / 7

-- -- *Main> circle 2.22
-- -- 15.489257

