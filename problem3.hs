elementAt :: [a] -> Int -> a
elementAt [x,_] 1 = x
elementAt (_:xs) n = elementAt xs (n-1) 

elementAt' :: Int -> [a] -> a
elementAt' 1 [x,_]  = x
elementAt' n (_:xs) = elementAt' (n-1) xs

elementAt'' :: [a] -> Int -> a
elementAt'' (x:_) 1  = x
elementAt'' [] _     = error "Index out of bounds"
elementAt'' (_:xs) k
  | k < 1           = error "Index out of bounds"
  | otherwise       = elementAt'' xs (k - 1)

