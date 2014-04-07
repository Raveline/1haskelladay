import Data.Graph.Inductive.Query.Monad

braid :: [a] -> [a] -> [a]
braid xs = concat . map (uncurry (:) . (><) id (:[])) . zip xs

