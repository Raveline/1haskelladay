import Data.List (groupBy, transpose)
import Control.Applicative ((<*>))
import Control.Monad (liftM, replicateM)
import Test.QuickCheck

newtype Board a = Board {getList :: [[a]]}
    deriving (Eq, Show)

data Direction = North | South | East | West
    deriving (Eq, Read, Show)

-- Preamble
--
--  $setup
--  >>> import Control.Applicative ((<$>), (<*>))
--  >>> import Data.List (sort)
--  >>> :{
--    let checkReverse d1 d2 =
--      (==) <$>
--         sort . map head . getList . viewFrom d1 <*>
--         sort . map last . getList . viewFrom d2 
--
-- prop> \(d,xxs) -> (==) <*> (viewFrom d . viewFrom d) $ (xxs :: Board Int)
-- -- prop> checkReverse West  East  (xxs :: Board Int)
-- -- prop> checkReverse East  West  (xxs :: Board Int)
-- -- prop> checkReverse North South (xxs :: Board Int)
-- -- prop> checkReverse South North (xxs :: Board Int)
-- o-  :}
--

viewFrom :: Direction -> Board a -> Board a
viewFrom North b = Board $ transpose . getList $ b
viewFrom South b = Board $ transpose . reverse . getList $ b
viewFrom West b = b
viewFrom East b = Board $ map reverse . reverse . getList $ b

board :: Int -> a -> [a] -> [[a]] 
board n x = take n . map (take n) . iterate (drop n) . (++ repeat x)

instance Arbitrary a => Arbitrary (Board a) where 
    arbitrary = liftM Board (arbitrary >>= replicateM <*> vector)

instance Arbitrary Direction where
    arbitrary = elements [North, South , East , West]
