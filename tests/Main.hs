module Main where


import           Test.Framework
import           Test.Framework.Providers.HUnit
import           Test.Framework.Providers.QuickCheck2
import           Test.HUnit hiding (Test)
import           Test.QuickCheck

import           Math.RPN


main :: IO ()
main = defaultMain tests

tests :: [Test]
tests = [ testMultiply ]

testMultiply :: Test
testMultiply = testCase "Multiplication" $ do
    assertEqual "Multiply 3 and 6" result shouldBe
  where
    result = 3
    shouldBe = 18
