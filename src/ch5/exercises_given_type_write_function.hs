module GivenTypeWriteFunction where

--
-- 1.
--
i :: a -> a
i a = a

--
-- 2.
--
c :: a -> b -> a
c a b = a

--
-- 3.
--
-- due to alpha equivalence, c and c'' are the same thing
-- (besides having different names)
c'' :: b -> a -> b
c'' b a = b

--
-- 4.
--
c' :: a -> b -> b
c' a b = b

--
-- 5.
--
r :: [a] -> [a]
r a = a
-- r a = tail a
-- r a = take 10 -- any integer here

--
-- 6.
--
co :: (b -> c) -> (a -> b) -> a -> c
co bToC aToB a = (bToC (aToB a))

--
-- 7.
--
a :: (a -> c) -> a -> a
a aToC a = a

--
-- 8.
--
a' :: (a -> b) -> a -> b
a' f a = f a
