{-
	Takes list of total students [1..howevermany]
	Outputs a list of tuples first element being the student ID number
	Second being a list
	for storing the students already been grouped with
-}
studentstruct ss = [(x,[x]) | x <- ss]

{-
	s = the student to add
	curstu = the tuple  where first element is the student id
	and the second element is the list of already grouped students
-}
addstudent s curstu = head [ (y, s: x) | let x = snd curstu , let y = fst curstu]


--TODO get type signature right
--updategroupedlist :: (Int x Int [y]) => x -> [y] -> [z]
--updategroupedlist n l = filter (not . (==n)) [l] 

{-
	studentstruct !! number gives you currentstudent 
	looking for is the student to check for
	returns true if student has already been grouped with this student
	otherwise will add student to group
	TODO needs to the update grouped already list
-}
checkindivdual lookingfor currentstudent = 
	case elem lookingfor $ snd currentstudent of
		True -> Right True
		False -> Left $ addstudent lookingfor currentstudent

{-
altcheckind lookingfor currentstudent = 
	(if elem lookingfor $ snd currentstudent
		then do {
				return
				}
		else
			do { 
				addstudent lookingfor currentstudent
				}
-}


--Checks if the total number of students can be split into said group size
checkmod x y = (if mod x y == 0 
						then putStrLn "Yay" 
						else putStrLn $"Cannot pair up " ++ 
						(show x) ++ " students into groups of " 
						++ show(y) ++ " across eight assignments")
{-
	should iterate entire list of students
	call checkindividual lfor = student to look for
	x is just the size of list (should be a way to hack it to use "length students")
	Error about show IO cause it prints yay if finds it instead of taking real action
	too lazy right now to figure it out
-}
checkall students lfor x= [checkindivdual lfor (students !! index )| index <- [1..x]]

{-

	TODO 
	Actually making it do things other then just initialize a base structure

-}
main :: IO ()
main = 
     do
	args <- getArgs
	progName <- getProgName
        let students = (head args)
        let grpsize = head $tail args
	putStrLn "The number of students are:"
        putStrLn students
        putStrLn "The group size is: "
        putStrLn grpsize
	putStrLn "Program name is:"
	putStrLn progName
	let studentAmt = read students :: Integer
	let listStudents = [1..studentAmt]

	let ss = studentstruct listStudents

             
        return ()





