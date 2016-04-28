myReverse :: [a] -> [a]

myReverse [] = [] 
myReverse (h:xs)= myReverse xs ++ [h]

myReverseLC list = [ [xs] | x <- list, last(list)]

myReverse'' xs = foldr (\x fId empty -> fId (x : empty)) id xs []