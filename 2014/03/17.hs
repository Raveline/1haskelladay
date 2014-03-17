maximumList :: (Ord a) => [a] -> [a]
maximumList = scanl1 max

main :: IO ()
main = do
    print $ maximumList [1..4]
    print $ maximumList [10,9..1]


