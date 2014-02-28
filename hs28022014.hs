import Control.Applicative

zipBinary :: [a->b->c] -> [a] -> [b] -> [c]
zipBinary ops xs ys = getZipList $ ZipList ops <*> ZipList xs <*> ZipList ys

main = print $
  zipBinary (cycle [(+), (*)]) [1 .. 4] [2..5] -- [3, 6, 7, 20]

