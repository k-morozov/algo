module Main (main) where
import Test.HUnit
import TestSummaryRanges
import qualified System.Exit as Exit


main :: IO ()
main = do
    result <- runTestTT testsSummaryRanges
    if failures result > 0 then Exit.exitFailure else Exit.exitSuccess
