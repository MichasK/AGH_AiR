import unittest

from miejsca_zerowe.search_zeros import bisection


class TestBisection(unittest.TestCase):
    def test_bisection(self):
        def x_to_square(x: float) -> float:
            return x * x
        result = bisection(-1, 1, x_to_square)
        self.assertEqual(0.0, result)



if __name__ == '__main__':
    unittest.main()
