module DoesItCompile where


--
-- 1.
--
bigNum = (^) 5 $ 10
wahoo = bigNum $ 10 -- no, because we apply a Num to a Num

--
-- 2.
--
x = print
y = print "woohoo!"
z = x "hello world"
-- yes

--
-- 3.
--
a = (+)
b = 5
c = b 10 -- no, same as 1, applying number to number
d = c 200

--
-- 4.
--
a = 12 + b -- no, b not in scope yet (c won't be in scope as well in the line below)
b = 10000 * c
