import Control.Applicative

zipBinary :: [a->b->c] -> [a] -> [b] -> [c]
zipBinary ops xs ys = getZipList $ ZipList ops <*> ZipList xs <*> ZipList ys

zipBinary' :: [a->b->c] -> [a] -> [b] -> [c]
zipBinary' ops xs ys = do
            f <- ops
            p1 <- xs
            p2 <- ys
            return $ f p1 p2

main = print $
  zipBinary' [(+), (*)] [1 .. 4] [2..5] -- [3, 6, 7, 20]

