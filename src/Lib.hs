{-# LANGUAGE OverloadedStrings #-}

module Lib
    ( parseSirens
    , filterSirensByNumber
    ) where

import qualified Data.HashMap as M
import qualified Data.ByteString.Char8 as B

-- | Sirens is an alias for a hashmap that has a sirens for key
-- and the number of occurences as value
type Sirens = M.Map B.ByteString Int

-- | Build a hashmap by taking the file as bytestring
parseSirens :: B.ByteString -> Sirens
parseSirens = foldl (\ z bs -> M.insertWith (+) bs 1 z) M.empty . B.lines

-- | Only get the keys of a hashmap that has n occurences
filterSirensByNumber :: Int -> Sirens -> [B.ByteString]
filterSirensByNumber n = M.keys . M.filter (==n)
