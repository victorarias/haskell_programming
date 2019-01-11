module Learn where

awesomify :: String -> String
awesomify phrase =
  phrase ++ "!"

fourthCharAsString :: String -> String
fourthCharAsString phrase =
  take 1 (drop 4 phrase)

nineLessOnHead phrase =
  drop 9 phrase

thirdLetter :: String -> Char
thirdLetter phrase =
  phrase !! 2

rvrs =
  awesome ++ whitespace ++ is ++ whitespace ++ curry
  where
    original = "Curry is awesome"
    awesome = drop 9 original
    whitespace = take 1 (drop 5 original)
    is = take 2 (drop 6 original)
    curry = take 5 original


