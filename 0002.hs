fibs = 0 : 1 : [n | x <- [2..], let n = fibs !! (x-1) +  fibs !! (x-2)]
s = (sum . takeWhile (<4000000) . filter (\x -> mod x 2 == 0)) fibs
main = do print(s)