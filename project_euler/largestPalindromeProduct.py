#!/bin/python3

import sys

def check_product(number):
    for i in range(100, 1000):
        z = number // i
        if number % i == 0 and 99 < z and z < 1000:
            return True
    return False
    
def check_palindrome(number):
    if str(number) == ''.join(reversed(str(number))):
        return True
    else:
        return False

t = int(input().strip())
tmp = list()
for a0 in range(t):
    n = int(input().strip())
    for i in range(n-1, 0, -1):
        if check_palindrome(i) and check_product(i):
            tmp.append(i)
            break
print(*tmp, sep="\n")