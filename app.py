def add(a, b):
    return a + b

def substract(a,b):
    return a - b
def muliply(a,b):
    return a * b

def divide(a, b):
    if b == 0:
        raise ValueError("Divisor cannot be zero")

    return a / b 

def power(base, exponent):
    return base ** exponent

def square(number):
    return number ** 2
if __name__ == "__main__":
    print(add(2,3))