import Control.Monad

divIfMultiple :: Integral a => a -> [a] -> Maybe [a]
divIfMultiple d = sequence . fmap (fmap fst) . map (mfilter ((== 0) . snd) . Just . flip divMod d)

main = do
_ <- print $ divIfMultiple 3 [3, 6 .. 12]  -- Just [1,2,3,4]
_ <- print $ divIfMultiple 2 [3, 6 .. 12]  -- Nothing
return ()
