
import System.Environment
import System.IO
import Data.List
import System.IO


--TODO make output True for true conidtion
--Checks if the total number of students can be split into said group size
checkmod :: Int -> Int -> Bool
checkmod x y 
       | mod x y == 0 = True
       | otherwise = False



--http://www.reddit.com/r/haskell/comments/1vras3/haskell_io_how_to_read_numbers/


--hey matt i finally did something usefull. so for now let the start of the program be 
--a conditional. checkmod i made a boolean. if true we do the calculation. if false, 
--don't do anything

main :: IO ()
main = 
     do
	args <- getArgs
	progName <- getProgName
        let students = read(head args) :: Int       --now we can use ints!
        let grpsize = read(head $tail args) :: Int

        if checkmod students grpsize
           then	
               do
                 putStrLn "The number of stoodents aer:"
                 putStrLn $show students
                 putStrLn "Teh greup siez is: "
                 putStrLn $show grpsize
	         putStrLn "Program name is:"
	         putStrLn progName            
           else
               do
                 putStrLn "Fuck You"
   
        



