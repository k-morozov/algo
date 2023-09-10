module TestSummaryRanges where
import SummaryRanges ( summaryRanges )
import Test.HUnit

testsSummaryRanges :: Test
testsSummaryRanges = TestList [TestLabel "summaryRanges" 
    testEmptyList, 
    testSingleElement, 
    testConsecutiveNumbers, 
    testNonConsecutiveNumbers,
    testNonConsecutiveNumbersSome
    ]

testEmptyList :: Test
testEmptyList = TestCase (assertEqual "should return an empty list for an empty input" [] (summaryRanges ([] :: [Int])))

testSingleElement :: Test
testSingleElement = TestCase (assertEqual "should return a single-element list" [[1]] (summaryRanges [1]))

testConsecutiveNumbers :: Test
testConsecutiveNumbers = TestCase (assertEqual "should return a list of consecutive numbers" [[1,5]] (summaryRanges [1,2,3,4,5]))

testNonConsecutiveNumbers :: Test
testNonConsecutiveNumbers = TestCase (assertEqual "should return a list of non-consecutive numbers" [[1,2],[4,6]] (summaryRanges [1,2,4,5,6]))

testNonConsecutiveNumbersSome :: Test
testNonConsecutiveNumbersSome = TestCase (assertEqual "should" [[1,2],[4,6],[9]] (summaryRanges [1,2,4,5,6,9]))
