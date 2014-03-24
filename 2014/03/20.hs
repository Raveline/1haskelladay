import Data.List.Split

squareList :: Int -> a -> [a] -> [[a]] 
squareList nl def xs = chunksOf nl $ take (nl^2) $ xs ++ repeat def

