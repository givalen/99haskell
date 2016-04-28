myLenght :: [a] -> Int
myLenght (x:xs) = 1 + myLenght xs
myLenght [] = 0 

myLenght' list = length list

myLength :: [a] -> Int
myLength = sum . map (\_->1)
