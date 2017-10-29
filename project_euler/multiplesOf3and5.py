#!/bin/python3

import sys

sums = list()
t = int(input().strip())
for a0 in range(t):
    n = int(input().strip())
    n -= 1
    tmp = 3 * (n//3 * ((n//3)+1)) // 2
    tmp += 5 * (n//5 * ((n//5)+1)) // 2
    tmp -= 15 * (n//15 * ((n//15)+1)) // 2
    sums.append(tmp)

print(*sums, sep="\n")