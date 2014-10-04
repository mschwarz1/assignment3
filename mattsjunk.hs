--Takes list of total students [1..howevermany]
--Out puts a list of tuples first element being the student ID number
--Second being a list
--for storing the students already been grouped with
studentstruct ss = [(x,[x]) | x <- ss]

--right now adds student to everyone 
addstudent ss s = [(a,s:[b])|(a,[b]) <- ss]
--checkstudentused ss i = map elem i (map snd ss)
chch ss = map snd ss 
--	| ss == 1 "YAY"
--	| length $ map snd ss > 1 = "something else"
--	| otherwise	= "WHAT!?"
--checkindivdual :: Num => Num i -> (Num,[Num]) -> IO
checkindivdual i t= if elem i $ snd t 
					then putStrLn "yay"
					else putStrLn "boo"

--Checks if the total number of students can be split into said group size
checkmod x y = (if mod x y == 0 then putStrLn "Yay" else putStrLn $"Cannot pair up " ++ (show x) ++ " students into groups of " ++ show(y) ++ "across eight assignments")
