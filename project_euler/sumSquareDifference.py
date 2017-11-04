#!/bin/python3

import sys
import math

t = int(input().strip())
tmp = list()
for a0 in range(t):
    n = int(input().strip())
    sum1 = int(math.pow(sum(list(range(1,n+1))), 2))
    sum2 = int(sum(set(map(lambda x: math.pow(x, 2), range(1, n+1)))))
    tmp.append(sum1-sum2)
print(*tmp, sep="\n")
