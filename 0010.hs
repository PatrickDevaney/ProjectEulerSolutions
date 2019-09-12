factors :: Integral a => a -> [a]
factors 2 = [1]
factors n = [x | x <- [1..(ceiling . sqrt . fromIntegral) n], mod n x == 0]
isPrime :: Integral a => a -> Bool
isPrime n = factors n == [1]
primes = [x | x <- [2..], isPrime x]
main = do (print . sum . takeWhile (<2000000)) primes
