--http://www.haskell.org/haskellwiki/Tutorials/Programming_Haskell/Argument_handling


import Data.List.Split

--anything does what dr dre does only better
splitList :: Int -> Int -> [[Int]]
splitList b a 
     | a == 0 = []
     | otherwise = chunksOf a [1..b]

--eminem takes a list of lists and divided the elements into sublists of even/odd
eminem :: (Integral a) => [[a]] -> [[a]]
eminem xxs = [ [ x | x <- xs, even x ] | xs <- xxs]  ++ [ [ y | y <- ys, odd y ] | ys <- xxs]

--Checks if the total number of students can be split into said group size
checkmod x y = (if mod x y == 0 then putStrLn "Yay" else putStrLn $"Cannot pair up " ++ (show x) ++ " students into groups of " ++ show(y) ++ "across eight assignments")

--Takes list of total students [1..howevermany]
--Out puts a list of tuples first element being the student ID number
--Second being an empty list 
--for storing the students already been grouped with
studentstruct ss = [(x,[]) | x <- ss]

--this takes lists and pairs their elements by order 
createList :: (Integral a) => [a] -> [a] -> [a] -> [[a]]
createList a b c
       | length a == 1 || length b  == 1 || length c == 1 = ((head a) : (head b) : (head c) : []):[]
       | otherwise = ((head a) : (head b) : (head c) : []):[] ++ createList (tail a) (tail b) (tail c)
