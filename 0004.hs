import Data.List
splitNumber :: Integral a => a -> [a]
splitNumber 0 = []
splitNumber n = splitNumber (div n 10) ++ [mod n 10]
isPalindrome ns = n == reverse n where n = splitNumber ns
palindromes = [a*b | a <- [100..999], b <- [100..999], isPalindrome (a*b)]
main = do (print . head . reverse . sort) palindromes