module TypeVariableOrSpecificTypeConstructor where

data C
data Zed
data Blah

--
-- 1.
--
f1 :: Num a => a -> b -> Int -> Int; f1 = undefined
--            [0]  [1]  [2]    [3]
-- [0]: constrained polymorphic (Num)
-- [1]: fully polymorphic
-- [2]: concrete
-- [3]: concrete


--
-- 2.
--
f2 :: zed -> Zed -> Blah; f2 = undefined
--   [0]    [1]    [2]
-- [0]: fully polymorphic
-- [1]: concrete
-- [2]: concrete

--
-- 3.
--
f3 :: Enum b => a -> b -> C; f3 = undefined
--             [0]  [1]  [2]
-- [0]: fully polymorphic
-- [1]: constrained polymorphic (Enum)
-- [2]: concrete

--
-- 4.
--
f4 :: f -> g -> C; f4 = undefined
--   [0]  [1]  [2]
-- [0]: fully polymorphic
-- [1]: fully polymorphic
-- [2]: concrete
