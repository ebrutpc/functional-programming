cokla :: Int -> a -> [a]

cokla 0 x = []
cokla n x = x : (cokla (n-1) x)
