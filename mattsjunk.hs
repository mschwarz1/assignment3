--Takes list of total students [1..howevermany]
--Out puts a list of tuples first element being the student ID number
--Second being a list
--for storing the students already been grouped with
studentstruct ss = [(x,[x]) | x <- ss]

--right now adds student to everyone 
addstudent ss s = [(a,s:[b])|(a,[b]) <- ss]



-- studentstruct !! number gives you t i is the student your checking for
checkindivdual i t= if elem i $ snd t 
					then putStrLn "yay"
					else putStrLn "boo"

--Checks if the total number of students can be split into said group size
checkmod x y = (if mod x y == 0 
						then putStrLn "Yay" 
						else putStrLn $"Cannot pair up " ++ 
						(show x) ++ " students into groups of " 
						++ show(y) ++ "across eight assignments")

--should iterate entire list of students
--call checkindividual lfor = student to look for
--x is just the size of list (should be a way to hack it to use "length students")
--Error about show IO cause it prints yay if finds it instead of taking real action
--too lazy right now to figure it out
checkall students lfor x= [checkindivdual lfor (students !! index )| index <- [1..x]]

