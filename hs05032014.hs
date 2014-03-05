import Data.Monoid
chainEndos :: [a->a] -> a -> a
chainEndos xs = appEndo (mconcat (map Endo xs))

main = print $ chainEndos [('h':),('e':)] "llo"

