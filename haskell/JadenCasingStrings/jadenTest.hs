module JadenTest where
import JadenCasingStrings
import Test.Hspec

main = hspec $ do
  describe "capitalize word" $ do
    it "receives a word and returns it capitalized" $ do
      capitalizeWord("hello")
        `shouldBe` "Hello"

  describe "words of sentence" $ do
    it "receives a sentence and returns a list with it words" $ do
      wordsOfSentence("hello world here goes nirvana") 
        `shouldBe` ["hello", "world", "here", "goes", "nirvana"]

  describe "capitalize words of array" $ do
    it "capitalize each word from a list" $ do
      capitalizeWordsOfArray(["hello", "world", "here", "goes", "nirvana"]) 
        `shouldBe` ["Hello", "World", "Here", "Goes", "Nirvana"]

  describe "array to sentence" $ do
    it "receives a list of words and returns a sentence with it" $ do
      arrayToSentence(["hello", "world", "here", "goes", "nirvana"])
        `shouldBe` "hello world here goes nirvana"

  describe "to Jaden Case" $ do
    it "receives a sentence and returns each word capitalized" $ do
      toJadenCase("hello world here goes nirvana")
        `shouldBe` "Hello World Here Goes Nirvana"
