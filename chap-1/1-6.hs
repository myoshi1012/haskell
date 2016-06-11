subst :: (a -> b -> c) -> (a -> b) -> a -> c
subst f g x = f x (g x)
-- 3.
strange :: ((a -> b) -> a) -> (a -> b) -> b
strange f g = g (f g)
-- 4. 
square2 :: Num a => a -> a
square2 x = x * x
