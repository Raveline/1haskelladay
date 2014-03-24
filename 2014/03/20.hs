import Data.List.Split

squareList :: Int -> a -> [a] -> [[a]] 
squareList nl def xs = chunksOf nl $ take (nl * nl) $ xs ++ repeat def

