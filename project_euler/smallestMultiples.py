#!/bin/python3

import sys

def gcd(a, b):
    if b == 0:
        return a
    return gcd(b, a%b)

def lcm(a, b):
    return (a*b//gcd(b, a%b))


t = int(input().strip())
results = list()
for a0 in range(t):
    n = int(input().strip())
    res = 1
    for i in range(1, n):
        res = lcm(res, i+1)
    results.append(res)
print(*results, sep="\n")