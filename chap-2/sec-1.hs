-- example
data Triangle = Failure | Isosceles | Equilateral | Scalene
  deriving (Show)

analyse :: (Int,Int,Int) -> Triangle
analyse (x,y,z)
  | x+y<=z    = Failure
  | x == z    = Equilateral
  | (x == y) || (y == z) = Isosceles
  | otherwise = Scalene

-- 1. and,orを条件式で定義する
-- let (&) be (∧) and let (!) be (∨)
(&) :: Bool -> Bool -> Bool
x & y = if x == False then False else y
(!) :: Bool -> Bool -> Bool
x ! y = if x == True then True else if y == True then True else False

--2. 合有の定義
-- let (==>) be (=>)
(==>) :: Bool -> Bool -> Bool
x ==> y = if (x == True) && (y == False) then False else True

-- 3. != のデフォルト定義
class Eq' a where
  (===),(/==) :: a -> a -> Bool
  x /== y = not (x === y)

-- 4. analyseの場合分けを順序に依存にないようにする
analyse' (x,y,z)
  | x == z = if x+y<=z then Failure else Equilateral
  | (x == y) || (y == z) = if x+y<=z then Failure else Isosceles
  | x /= y && y /= z && z /= x = if x+y<=z then Failure else Scalene
  
-- 5. ３つの整数を非減少順に並び替えるsort3の定義と引数の順序に依存しないanalyse'の定義
sort3 :: Ord a => (a,a,a) -> (a,a,a)
sort3 (x,y,z)
  | x <= y = if y <= z then (x,y,z) else if x > z then (z,x,y) else (x,z,y)
  | otherwise = if x <= z then (y,x,z) else if y > z then (z,y,x) else (y,z,x)

analyse'' :: (Int,Int,Int) -> Triangle
analyse'' (x,y,z) 
  | a == c = if a+b<=c then Failure else Equilateral
  | (a == b) || (b == c) = if a+b<=c then Failure else Isosceles
  | a /= b && b /= c && c /= a = if a+b<=c then Failure else Scalene
    where (a,b,c) = sort3 (x,y,z)
