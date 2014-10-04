import System.Environment
import System.IO
import Data.List
import System.IO

--http://www.reddit.com/r/haskell/comments/1vras3/haskell_io_how_to_read_numbers/

main = do
	args <- getArgs
	progName <- getProgName
	putStrLn "The number of stoodents aer:"
        putStrLn $head args
        putStrLn "Teh greup siez is: "
        putStrLn $head $tail args
	putStrLn "Program name is:"
	putStrLn progName
        
