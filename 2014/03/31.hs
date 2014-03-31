import Data.Maybe
-- $setup
-- >>> import Control.Applicative
--
-- -- | emptyIndices List the indices of a list of maybes that contains Nothing
-- --
-- -- prop> (all (isNothing) .) . map . (!!) <*> emptyIndices $ xs
-- --
emptyIndices :: [Maybe a] -> [Int]
emptyIndices = map fst . filter (isNothing . snd) . zip [0..]
