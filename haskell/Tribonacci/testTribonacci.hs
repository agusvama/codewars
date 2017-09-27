import Tribonacci
import Test.Hspec

main = hspec $ do
  describe "Functions" $ do
    it "returns a list with last 3 elements from a list" $ do
      last3 [1,2,3] `shouldBe` [3,2,1]
      last3 [1,2,3,4,5,6] `shouldBe` [6,5,4]
    
    it "returns the sum of the last 3 elements of a list" $ do
      sumLast3 [1,2,3]  `shouldBe` 6
      sumLast3 [1,2,3,4,5,6]  `shouldBe` 15

  describe "Tribonacci" $ do
    it "should work for some examples" $ do
      tribonacci (1, 1, 1) 10 `shouldBe` [1,1,1,3,5,9,17,31,57,105]
      tribonacci (0, 0, 1) 10 `shouldBe` [0,0,1,1,2,4,7,13,24,44]
      tribonacci (0, 1, 1) 10 `shouldBe` [0,1,1,2,4,7,13,24,44,81]
