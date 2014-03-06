import Data.List 

takeStrictlyLessThan :: (Num a, Ord a) => a -> [a] -> [a]
takeStrictlyLessThan n = last . takeWhile ((< n) . sum) . inits

main = print $ takeStrictlyLessThan (10::Int) [1..]

