module Main where


import           Test.Framework
import           Test.Framework.Providers.HUnit
-- import           Test.Framework.Providers.QuickCheck2
import           Test.HUnit hiding (Test)
-- import           Test.QuickCheck

import           Math.RPN


main :: IO ()
main = defaultMain tests

tests :: [Test]
tests = [ testMultiplication
        , testAddition
        , testSubtraction
        , testDivision
        , testSum
        ]

testMultiplication :: Test
testMultiplication = testCase "Multiplication" $
    assertEqual "'3 6 *' should equal 18" result shouldBe
  where
    result = solveRPN "3 6 *"
    shouldBe = 18.0

testAddition :: Test
testAddition = testCase "Addition" $
    assertEqual "'3 6 +' should equal 9" result shouldBe
  where
    result = solveRPN "3 6 +"
    shouldBe = 9.0

testSubtraction :: Test
testSubtraction = testCase "Subtraction" $
    assertEqual "'3 6 -' should equal -3" result shouldBe
  where
    result = solveRPN "3 6 -"
    shouldBe = -3.0

testDivision :: Test
testDivision = testCase "Division" $
    assertEqual "'6 2 /' should equal 3" result shouldBe
  where
    result = solveRPN "6 2 /"
    shouldBe = 3.0

testSum :: Test
testSum = testCase "Sum" $
    assertEqual "'3 2 6 2 sum' should equal 13" result shouldBe
  where
    result = solveRPN "3 2 6 2 sum"
    shouldBe = 13.0
