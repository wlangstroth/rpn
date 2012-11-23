module Main where


import           System.Environment
import           System.Exit
import           Text.Printf

import           Math.RPN

main = getArgs >>= parse
  where
    parse ["-v"]  = version     >> exitWith ExitSuccess
    parse []      = interact parseRPN >> putStrLn ""
    parse x       = interact parseRPN >> putStrLn ""

parseRPN :: String -> String
parseRPN = show . solveRPN

version :: IO ()
version = putStrLn "rpn 0.1"

usage :: IO ()
usage = putStrLn "type some stuff in"
