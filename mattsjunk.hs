--Takes list of total students [1..howevermany]
--Out puts a list of tuples first element being the student ID number
--Second being a list
--for storing the students already been grouped with
studentstruct ss = [(x,[x]) | x <- ss]

--s = the student to add
--curstu = the tuple  where first element is the student id
--and the second element is the list of already grouped students
addstudent s curstu = head [ (y, s: x) | let x = snd curstu , let y = fst curstu]

--TODO Want to be able to call addstudent if condition is true
-- Return types being different is making it difficult
-- studentstruct !! number gives you t i is the student your checking for
checkindivdual :: (Num t, Num t1) => t -> (t,[t1]) -> Either (t,[t1]) IO()
checkindivdual lookingfor currentstudent= if elem lookingfor $ snd currentstudent 
					then addstudent lookingfor currentstudent
					else putStrLn "woot"



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


