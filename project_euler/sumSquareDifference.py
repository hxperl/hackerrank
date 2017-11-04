#!/bin/python3

import sys
import math

t = int(input().strip())
tmp = list()
for a0 in range(t):
    n = int(input().strip())
    sum1 = int(math.pow(sum(list(range(1,n+1))), 2))
    sum2 = n*(n+1)*(2*n+1)//6
    tmp.append(sum1-sum2)
print(*tmp, sep="\n")