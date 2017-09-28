import unittest
import Tribonacci

class TestTribonacci(unittest.TestCase):

    def testLast3(self):
        self.assertEqual(Tribonacci.last3([1,2,3,4,5,6]), [4,5,6])

    def testSumLast3(self):
        self.assertEqual(Tribonacci.sumLast3([1,2,3,4,5,6]), 15)

    def testTribonacci(self):
        self.assertEqual(Tribonacci.tribonacci([1,1,1], 10), [1,1,1,3,5,9,17,31,57,105])
