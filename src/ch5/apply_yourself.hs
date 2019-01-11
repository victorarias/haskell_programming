--
-- 1. (++) :: [a] -> [a] -> [a]
--

myConcat x = x ++ " yo"
-- :t myConcat
-- => myConcat :: [Char] -> [Char]


--
-- 2. (*) :: Num a => a -> a -> a
--

myMult x = (x / 3) * 5
-- :t myMult
-- => myMult :: Fractional a => a -> a


--
-- 3. take :: Int -> [a] -> [a]
--

myTake x = take x "hey you"
-- :t myTake
-- => myTake :: Int -> [Char]


--
-- 4. (>) :: Ord a => a -> a -> Bool
--

myCom x = x > (length [1..10])
-- :t myCom
-- => myCom :: myCom :: Int -> Bool

-- NOTE: I guess we have `Int -> Bool` instead of `Ord a => a -> Bool` because
-- length returns the concrete type Int (`length :: Foldable t => t a -> Int`)
-- and (>) requires an instance of Ord.
-- So the function below uses less specific types:
myCom2 x = x > (fromIntegral (length [1..10]))
-- :t myCom2
-- => myCom2 :: (Ord a, Num a) => a -> Bool

-- 5. (<) :: Ord a => a -> a -> Bool

myAlph x = x < 'z'
-- :t myAlph
-- => myAlph :: Char -> Bool
