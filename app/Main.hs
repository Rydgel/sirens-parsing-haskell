{-# LANGUAGE OverloadedStrings #-}

module Main where

import qualified Data.ByteString.Char8 as B
import Lib

main :: IO ()
main = do
  fileStr <- B.readFile "resources/sirens_fxt.txt"
  putStrLn "Number of Sirens which are present only twice: "
  print $ length $ filterSirensByNumber 2 $ parseSirens fileStr
  putStrLn "Sirens which are present only once: "
  print $ length $ filterSirensByNumber 1 $ parseSirens fileStr
