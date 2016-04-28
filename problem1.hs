myLast :: [a] -> a
myLast [] = error "No end for empty lists!"
myLast [x] = x
myLast (_:xs) = myLast xs

lastElem :: [a] -> a
lastElem [] = error "No last element for empty list"
lastElem [x] = x
lastElem (_:xs) = lastElem xs

lastElem' = last

lastElem'' = head . reverse

-- lastElem''' (_:xs) = lastElem''' xs
--      | [x] = x
--      | [] = error "No last element for empty list"