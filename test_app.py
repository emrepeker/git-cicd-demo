from app import power


def test_power_with_positive_exponent():
    assert power(2, 3) == 8


def test_power_with_zero_exponent():
    assert power(5, 0) == 1


def test_power_with_negative_exponent():
    assert power(2, -1) == 0.5