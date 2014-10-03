--http://www.haskell.org/haskellwiki/Tutorials/Programming_Haskell/Argument_handling


import Data.List.Split

--drDre takes a list of size b and breaks it up into chunks of 8
drDre :: (Integral a) => a -> [[a]]
drDre 0 = [[0]]
drDre b = chunksOf 8 [1..b]

--eminem takes a list of lists and divided the elements into sublists of even/odd
eminem :: (Integral a) => [[a]] -> [[a]]
eminem xxs = [ [ x | x <- xs, even x ] | xs <- xxs]  ++ [ [ y | y <- ys, odd y ] | ys <- xxs]

