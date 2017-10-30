#!/bin/python3

import sys
import math

def isprime(n):
    """Returns True if n is prime."""
    if n == 2:
        return True
    if n == 3:
        return True
    if n % 2 == 0:
        return False
    if n % 3 == 0:
        return False

    i = 5
    w = 2

    while i * i <= n:
        if n % i == 0:
            return False

        i += w
        w = 6 - w

    return True
t = int(input().strip())
tmp = list()
for a0 in range(t):
    n = int(input().strip())
    primes=list()
    for i in range(1, int(math.sqrt(n))+1):
        if n % i == 0:
            res = n // i
            if isprime(res):
                primes.append(res)
            if isprime(i):
                primes.append(i)
    tmp.append(max(primes))
print(*tmp, sep="\n")




