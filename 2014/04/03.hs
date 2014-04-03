import Control.Monad.Writer

-- | foo
-- -- Types. Powerful enough to get it right.

foo :: (a ->  b) -> [a] -> [(a,b)]
foo f = map (write f)

write :: (a -> b) -> a -> (a, b)
write f x = runWriter $ writer (x, f x)
