module MiddleTest where
import Middle
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "El número medio es: a" $ do
    it "regresa True si el número medio es 'a'" $ do
      medioA (2, 1, 3) `shouldBe` True
      medioA (2, 3, 1) `shouldBe` True
      medioA (10, 5, 12) `shouldBe` True
      medioA (15, 5, 12) `shouldBe` False

  describe "El número medio es: b" $ do
    it "regresa True si el número medio es 'b'" $ do
      medioB (1, 2, 3) `shouldBe` True
      medioB (3, 2, 1) `shouldBe` True
      medioB (1, 0, 3) `shouldBe` False
      medioB (100, 200, 300) `shouldBe` True

  describe "El número medio es: c" $ do
    it "regresa True si el número medio es 'c'" $ do
      medioC (1, 3, 2) `shouldBe` True
      medioC (3, 1, 2) `shouldBe` True
      medioC (3, 1, 4) `shouldBe` False
      medioC (3, 1, 4) `shouldBe` False

  describe "Regresa el índice del número medio" $ do
    it "regresa 0 si medioA" $ do
      gimme (2, 3, 1) `shouldBe` 0
      gimme (2, 1, 3) `shouldBe` 0
    it "regresa 1 si medioB" $ do
      gimme (5, 10, 14) `shouldBe` 1
      gimme (14, 10, 5) `shouldBe` 1
    it "regresa 2 si medioC" $ do
      gimme (3, 1, 2) `shouldBe` 2
      gimme (1, 3, 2) `shouldBe` 2
