data NestedList a = Elem a | List [NestedList a]

flattern :: NestedList a ->[a]
flattern (Elem x) = [x]
flattern (List x) = concatMap flattern x