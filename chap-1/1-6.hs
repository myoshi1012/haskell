-- prepare
-- 1.
subst :: (a -> b -> c) -> (a -> b) -> a -> c
subst f g x = f x (g x)

flip' :: (a -> b -> c) -> (b -> a -> c)
flip' f x y = f y x
-- *Main> f = \x y -> x `div` y
-- *Main> flip' f 4 2
-- 0
-- *Main> f' = flip' f
-- *Main> f' 4 2
-- 0


-- 2.
swap :: (a,b) -> (b,a)
swap (a,b) = (b,a)
-- *Main> h = curry (f . swap)
-- *Main> :t h
-- h :: Fractional c => c -> c -> c
-- *Main> g = Main.flip (curry f)
-- *Main> :t g
-- g :: Fractional a => a -> a -> a


-- 3.
strange :: ((a -> b) -> a) -> (a -> b) -> b
strange f g = g (f g)

-- 4. 
square :: Num a => a -> a
square x = x * x

