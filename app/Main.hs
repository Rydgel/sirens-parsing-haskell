{-# LANGUAGE OverloadedStrings #-}

module Main where

import qualified Data.ByteString.Char8 as B
import Lib

main :: IO ()
main = do
  fileStr <- B.readFile "resources/sirens_fxt.txt"
  let sirens = parseSirens fileStr
  putStrLn "Number of Sirens which are present only twice: "
  print $ length $ filterSirensByNumber 2 sirens
  putStrLn "Sirens which are present only once: "
  print $ length $ filterSirensByNumber 1 sirens
