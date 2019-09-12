triple = [[a,b,c] | a <- [1..998], b <- [a..998], c <- [b..998], a+b+c == 1000 && a^2 + b^2 == c^2]
main = do (print . product . head . take 1) triple
