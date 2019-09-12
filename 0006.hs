sumSquares :: Integral a => a -> a
sumSquares n = sum(map (^2) [1..n])
squareSum :: Integral a => a -> a
squareSum n = (sum [1..n])^2
squareDifference :: Integral a => a -> a
squareDifference n = squareSum n - sumSquares n

main = do print(squareDifference 100)