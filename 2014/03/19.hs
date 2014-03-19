import Data.List
import Data.Function
mostRepeatedElem :: Eq a => [a] -> (a,Int)
mostRepeatedElem = maximumBy (compare `on` snd) . map (\x -> (head x, length x)) . group
