palindroma :: String -> Bool

palindroma [] = True
palindroma (x:xs) = if (x == last xs) then palindroma $ tail $ reverse xs
                    else False