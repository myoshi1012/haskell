data Day = Sun | Mon | The | Wed | Thu | Fri | Sat
            deriving (Eq,Ord,Enum,Show)

-- 1.
dayBefore :: Day -> Day
dayBefore x = toEnum ((fromEnum x - 1) `mod` 7)

-- 2.
data Direction = North | East | South | West
            deriving (Eq,Ord,Enum,Show)

reverse :: Direction -> Direction
reverse d = toEnum ((fromEnum d + 2) `mod` 4)

-- 3.
data MyBool = MyFalse | MyTrue

instance Enum MyBool where
  fromEnum MyFalse = 0
  fromEnum MyTrue = 1
  toEnum 0 = MyFalse
  toEnum 1 = MyTrue

