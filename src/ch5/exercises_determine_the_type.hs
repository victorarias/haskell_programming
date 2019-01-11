{-# LANGUAGE NoMonomorphismRestriction #-}

module DetermineTheType1 where

--
-- 1.
--

a = (* 9) 6 -- Num a => a
b = head [(0,"doge"),(1,"kitteh")] -- (Num a) => (a, [Char])
c = head [(0 :: Integer ,"doge"),(1,"kitteh")] -- (Integer, [Char])
d = if False then True else False -- Bool
e = length [1, 2, 3, 4, 5] -- Int
f = (length [1, 2, 3, 4]) > (length "TACOCAT") -- Bool


--
-- 2.
--

x2 = 5
y2 = x2 + 5
w2 = y2 * 10 -- (Num a) => a


--
-- 3.
--

x3 = 5
y3 = x3 + 5
z3 y = y * 10 -- (Num a) => a -> a

--
-- 4.
--
x4 = 5
y4 = x4 + 5
f4 = 4 / y4 -- (Fractional a) => a

--
-- 5.
--
x5 = "Julie"
y5 = " <3 "
z5 = "Haskell"
f5 = x5 ++ y5 ++ z5 -- [Char]

