import Data.Char

lcAlphabetFrom :: Char -> [Char]
lcAlphabetFrom c = fst sep ++ take (length $ snd sep) ['a'..'z']
    where 
        sep = span (isLower) (take 26 [c..])

main = do
    print $ lcAlphabetFrom 'a' -- "abcdefghijklmnopqrstuvwxyz"
    print $ lcAlphabetFrom 'e' -- "efghijklmnopqrstuvwxyzabcd"
    print $ lcAlphabetFrom '`' -- "abcdefghijklmnopqrstuvwxyz"
    print $ lcAlphabetFrom '{' -- "abcdefghijklmnopqrstuvwxyz"
