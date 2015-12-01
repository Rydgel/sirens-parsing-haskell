{-# LANGUAGE OverloadedStrings #-}

module Main where

import qualified Data.ByteString.Char8 as B
import qualified Data.HashMap as M
import           Lib
import           Test.Hspec

main :: IO ()
main = do
  fileStr <- B.readFile "resources/sirens_fxt.txt"
  let sirens = parseSirens fileStr
  hspec $ do
    describe "Verify that a non existent Sirens" $
      it "is not found" $
        M.lookup "9999999999999" sirens `shouldBe` Nothing
    describe "Verify that an existent Sirens" $
      it "is found with 1 occurence" $
        M.lookup "005520242" sirens `shouldBe` Just 1
    describe "Verify that an existent Sirens" $
      it "is found with 2 occurences" $
        M.lookup "005541552" sirens `shouldBe` Just 2
    describe "Verify that an existent Sirens" $
      it "is found with 32 occurences" $
        M.lookup "177501517" sirens `shouldBe` Just 32
