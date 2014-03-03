import GHC.Exts

sortByMax :: Ord a => [[a]] -> [[a]]
sortByMax = sortWith maximum

main = print $ sortByMax [[1,10],[5,5]]
