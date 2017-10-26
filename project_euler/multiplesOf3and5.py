#!/bin/python3

import sys

sums = list()
t = int(input().strip())
for a0 in range(t):
    n = int(input().strip())
    sums.append(sum(set(list(range(0, n, 3)) + list(range(0, n, 5)))))

print(*sums, sep="\n")