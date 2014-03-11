import Data.Char

lcAlphabetFrom :: Char -> [Char]
lcAlphabetFrom c = let offset = toAlphPos (keepInLower c) in
                    map (toAlph . (flip mod 26) . (+ offset) . toAlphPos) ['a'..'z']

toAlphPos :: Char -> Int
toAlphPos = flip (-) (ord 'a') . ord

toAlph :: Int -> Char
toAlph = chr . (+ ord 'a') 

keepInLower :: Char -> Char
keepInLower c 
    | c `elem` ['a'..'z'] = c
    | otherwise = 'a'


main = do
    print $ lcAlphabetFrom 'a' -- "abcdefghijklmnopqrstuvwxyz"
    print $ lcAlphabetFrom 'e' -- "efghijklmnopqrstuvwxyzabcd"
    print $ lcAlphabetFrom '`' -- "abcdefghijklmnopqrstuvwxyz"
    print $ lcAlphabetFrom '{' -- "abcdefghijklmnopqrstuvwxyz"
