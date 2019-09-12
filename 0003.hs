factors :: Integral a => a -> [a]
factors n = [x | x <- [1..n], mod n x == 0]
prime :: Integral a => a -> Bool
prime n = factors n == [1,n]
ans = head (reverse (filter (prime) (takeWhile (<(round(sqrt(600851475143)+1)::Integer)) (factors 600851475143))))
main = do print ans
