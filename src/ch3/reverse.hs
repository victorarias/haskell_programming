module Reverse where

rvrs :: String -> String
rvrs x =
  awesome ++ whitespace ++ is ++ whitespace ++ curry
  where
    awesome = drop 9 x
    whitespace = take 1 (drop 5 x)
    is = take 2 (drop 6 x)
    curry = take 5 x

main :: IO ()
main = print $ rvrs "Curry is awesome"
