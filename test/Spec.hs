module Main (main) where
import Test.HUnit
import TestSummaryRanges
import TestIsomorphicStrings
import qualified System.Exit as Exit


main :: IO ()
main = do
    -- result <- runTestTT testsSummaryRanges
    result <- runTestTT tesIsomorphicStrings
    if failures result > 0 then Exit.exitFailure else Exit.exitSuccess
