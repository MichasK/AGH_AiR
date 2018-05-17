import numpy as np
import math


def rectangular_integrate(left_borded: float, right_borded: float, f, N=None) -> float:
    def rectangular_area(left_borded: float, right_borded: float, f, N=None) -> float:
        return (right_borded - left_borded) * (f(left_borded) + f(right_borded)) / 2

    if N is None:
        return rectangular_area(left_borded, right_borded, f)
    else:
        step = (right_borded - left_borded) / N
        x = np.arange(left_borded, right_borded, step)
        partials = []
        for i in range(len(x) - 1):
            partials.append(rectangular_area(i, i+1, f))
        return sum(partials)
