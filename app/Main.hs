{-# LANGUAGE OverloadedStrings #-}

module Main where

import qualified Data.ByteString.Char8 as B
import qualified Data.HashMap as M
import Lib

main :: IO ()
main = do
  fileStr <- B.readFile "resources/sirens_fxt.txt"
  let sirens = parseSirens fileStr
  putStrLn "Number of Sirens which are present twice or more: "
  print $ M.size $ M.filter (>=2) sirens
  putStrLn "Number of Sirens which are present only once: "
  print $ M.size $ M.filter (==1) sirens
