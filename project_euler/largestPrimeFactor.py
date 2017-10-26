#!/bin/python3

import sys

def check_prime(number):
    if number > 1:
        for i in range(2, number):
            if number % i ==0:
                return False
        else:
            return True

t = int(input().strip())
tmp = list()
for a0 in range(t):
    n = int(input().strip())
    for i in range(n, 0, -1):
        if n % i == 0 and check_prime(i):
            tmp.append(i)
            break
print(*tmp, sep="\n")
        