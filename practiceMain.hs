
import System.Environment
import System.IO
import Data.List
import System.IO
import Data.List.Split

----------------------------------------------------------------------------------
--TODO make output True for true conidtion
--Checks if the total number of students can be split into said group size
checkmod :: Int -> Int -> Bool
checkmod x y 
       | mod x y == 0 = True
       | otherwise = False
-----------------------------------------------------------------------------------
--split list makes a bunch of sublists
splitList :: Int -> Int -> [[Int]]
splitList b a 
     | a == 0 = []
     | otherwise = chunksOf a [1..b]

----------------------------------------------------------------------------
--takes [[final list of student groups]] [student list] group size
--listGen perhaps will build a list of groups, determine if it can continue or not and if 
--the conditions have been met, and then print out the output 
listGen :: [[Int]] -> [Int] -> Int -> IO ()
listGen endList students groupSize
       | (length endList) == ((length students) `div` groupSize) * 8 = putStrLn "Success"
       | otherwise = putStrLn "Can not group everyone up in groups that size 8 times"
----------------------------------------------------------------------------------

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
               listGen (splitList students grpsize) [1..students] grpsize
                 
           else
               do
                 putStrLn "Can not group everyone up in groups that size"
   
        



