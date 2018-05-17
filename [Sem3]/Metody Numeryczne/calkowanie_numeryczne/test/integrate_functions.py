import unittest
from calkowanie_numeryczne.integrate_functions import rectangular_integrate
import math
import scipy.integrate as integrate


class TestIntegrateFunctions(unittest.TestCase):
    def test_first_row_integral(self):
        result = rectangular_integrate(0, 1, math.exp)
        self.assertEqual(result, 1.8591409142295225)

    def test_high_row_integral(self):
        result = rectangular_integrate(0, 1, math.exp, 100)
        correct_result, estimated_error = integrate.quad(math.exp,0,1)
        error = correct_result-result
        self.assertLess(error, 0.01)


if __name__ == '__main__':
    unittest.main()
