import Data.List
import Data.Tuple
import Data.Function
mostRepeatedElem :: Eq a => [a] -> (a,Int)
mostRepeatedElem = swap . maximumBy (compare `on` fst) . map (\x -> (length x, head x)) . group
