sıkıstır :: Eq a => [a] -> [a]
sıkıstır (x:xs)
    | ((tail xs) == [] ) = xs
    | (x== head xs) = sıkıstır xs
    | otherwise = [x] ++ sıkıstır xs
