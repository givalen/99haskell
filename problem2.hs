butLast :: [a] -> a
butLast [] = error "no but last element in a empty list"
butLast [x,_] = x 
butLast (_:xs) = butLast xs  

myButLast x = reverse x !! 1

--myButLast' x = last x 
