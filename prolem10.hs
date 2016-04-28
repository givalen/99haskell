pack ::Eq a =>[a] ->[[a]]

pack (x:xs)= let (first,rest) = span (==x) xs
             in (x:first) : pack rest
pack [] = []

encode :: [a] -> [(Int,a)]

encode xs= map (\f xs ->(lenght xs, head xs)) .group
