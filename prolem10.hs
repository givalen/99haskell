pack ::Eq a =>[a] ->[[a]]

pack (x:xs)= let (first,rest) = span (==x) xs
             in (x:first) : pack rest
pack [] = []

encode ::[a]  ->[(Int,a)] 

encode list= map encodedTuple list
               where encodedTuple list= (length list,head list) 