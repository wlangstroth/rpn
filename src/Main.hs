module Main where


import           System.Environment
import           System.Exit

import           Math.RPN


main = interact parseRPN

parseRPN :: String -> String
parseRPN = unlines . map (show . solveRPN) . lines
