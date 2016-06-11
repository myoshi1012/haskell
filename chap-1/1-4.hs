-- to use functions of 1-1.hs 
import Mymodule.First

-- prepare
delta :: (Float,Float,Float) -> Float
delta (a,b,c) = sqrt (square b - 4 * a * c)

-- 2. curry delta
deltac :: Float -> (Float -> (Float -> Float))
deltac a b c = sqrt (square b - 4 * a * c)

-- -- *Main> deltac 2 10 1
-- -- 9.591663
-- -- *Main> delta (2,10,1)
-- -- 9.591663

-- 7. uncurry
myuncurry :: (a -> b -> c) -> ((a,b) -> c)
myuncurry f (a,b) = f a b
