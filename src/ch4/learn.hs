module Learn where

data Mood = Blah | Woot deriving Show

changeMood Blah = Woot
changeMood _ = Blah

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome a = a == reverse a

myAbs :: Integer -> Integer
myAbs a =
  if a > 0 then a else -a

-- f :: (a, b) -> (c, d) -> ((b, d), (a, c))
-- f x y = ((snd x, snd y), (fst x, fst y))

x = (+)
f xs = w `x` 1
  where w = length xs
