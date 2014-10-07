import System.Environment
import System.IO
import Data.List
import System.IO


--http://www.reddit.com/r/haskell/comments/1vras3/haskell_io_how_to_read_numbers/


main :: IO ()
main = 
     do
	args <- getArgs
	progName <- getProgName
        let students = read(head args) :: Int       --now we can use ints!
        let grpsize = read(head $tail args) :: Int
	putStrLn "The number of stoodents aer:"
        putStrLn students
        putStrLn "Teh greup siez is: "
        putStrLn grpsize
	putStrLn "Program name is:"
	putStrLn progName
        return (students, grpsize)        
        return ()



