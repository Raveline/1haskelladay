import Data.Graph.Inductive.Query.Monad

pairToList :: (a,a) -> [a]
pairToList = uncurry (:) . (><) id (:[]) 


