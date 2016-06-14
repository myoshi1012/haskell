-- 2.
data Triple a b c = MakeTriple a b c

-- 3.
years :: (Int,Int,Int) -> (Int,Int,Int) -> Int
years (d,m,y) (md,mm,my)
  | mm <= m && md <= d = y - my
  | otherwise = y - my - 1

-- 4.

