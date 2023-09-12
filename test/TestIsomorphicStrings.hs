module TestIsomorphicStrings where
import IsomorphicStrings ( isIsomorphic )
import Test.HUnit

tesIsomorphicStrings :: Test
tesIsomorphicStrings = TestList [TestLabel "isomorphicStrings" 
    testEmptyList,
    testAandB,
    testEggandAdd,
    testAAandBC,
    testCCandDE,
    testFooandBar,
    testPaperandTitle
    ]

testEmptyList :: Test
testEmptyList = TestCase (assertEqual "[] and [] is true" True (isIsomorphic "" ""))

testAandB :: Test
testAandB = TestCase (assertEqual "a and b is true" True (isIsomorphic "a" "b"))

testEggandAdd :: Test
testEggandAdd = TestCase (assertEqual "egg and add is true" True (isIsomorphic "egg" "add"))

testAAandBC :: Test
testAAandBC = TestCase (assertEqual "aa and bc is false" False (isIsomorphic "aa" "bc"))

testCCandDE :: Test
testCCandDE = TestCase (assertEqual "cc and de is false" False (isIsomorphic "cc" "de"))

testFooandBar :: Test
testFooandBar = TestCase (assertEqual "foo and bar is false" False (isIsomorphic "foo" "bar"))

testPaperandTitle :: Test
testPaperandTitle = TestCase (assertEqual "paper and title is true" True (isIsomorphic "paper" "title"))