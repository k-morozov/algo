module IsomorphicStrings (
    isIsomorphic
)
where

import Data.Char

isIsomorphic :: [Char] -> [Char] -> Bool
isIsomorphic s t
    | length s /= length t = False
    | otherwise = impl (replicate 26 (-1)) $ zip s t
        where
            codeA = ord 'a'

            getCode :: Char -> Int
            getCode x = ord x - codeA

            upValue :: [Int] -> Int -> Int -> [Int]
            upValue lst pos value
                | pos == 0  = value : drop 1 lst
                | otherwise = take pos lst ++ [value] ++ drop (pos + 1) lst

            impl :: [Int] -> [(Char, Char)] -> Bool
            impl _ [] = True

            impl mapper ((a, b):xs)
                | codeMapA == -1 = impl (upValue mapper (getCode a) (getCode b)) xs
                | otherwise = codeMapA == getCode b && impl mapper xs
                    where
                        codeMapA = mapper !! getCode a