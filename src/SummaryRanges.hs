module SummaryRanges (
    summaryRanges
)
where


summaryRanges :: (Eq a, Num a) => [a] -> [[a]]
summaryRanges = helper
    where
        helper [] = []
        helper (x:xs) = groupRanges x xs [] []

        isCurrentRange :: (Eq a, Num a) => [a] -> a -> Bool
        isCurrentRange [] _ = True
        isCurrentRange lst x = x == (last lst + 1)
        
        groupRanges :: (Eq a, Num a) => a -> [a] -> [a] -> [[a]] -> [[a]]
        groupRanges x [] curr acc = let
                result 
                    | isCurrentRange curr x = acc ++ [curr ++ [x]]
                    | otherwise = acc ++ [curr] ++ [[x]]
            in map (\lst -> if length lst == 1 then [head lst] else [head lst, last lst]) result

        groupRanges x xs curr acc
            | isCurrentRange curr x = groupRanges (head xs) (tail xs) (curr ++ [x]) acc
            | otherwise = groupRanges (head xs) (tail xs) [x] (acc ++ [curr])