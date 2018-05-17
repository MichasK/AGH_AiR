def bisection(left_border: int, right_border, function) -> float:
    '''

    :param left_border:
    :param right_border:
    :param function:
    :return: founded root
    '''
    a = left_border
    b = right_border
    pivot = (left_border + right_border) / 2
    while abs(function(pivot)) > 0.001:
        if a * pivot < 0:
            b = pivot
        else:
            a = pivot
        pivot = (a+b)/2
    return pivot


