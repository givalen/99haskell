pack ::Eq a =>[a] ->[[a]]

pack (x:xs)= let (first,rest) = span (==x) xs
             in (x:first) : pack rest
pack [] = []

pack' ::Eq a =>[a] ->[[a]]
pack' [] = []
pack' (x,xs)= filter (\y ->y ==x) xs ++ pack'[filter (\y ->y /= x )xs]
              