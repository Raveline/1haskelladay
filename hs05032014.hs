import Data.Monoid
import Data.Foldable
chainEndos :: [a->a] -> a -> a
chainEndos = appEndo . foldMap Endo 

main = print $ chainEndos [('h':),('e':)] "llo"

