#!/bin/python3

import sys

fib_list = [1, 2]
sums = list()
t = int(input().strip())
for a0 in range(t):
    n = int(input().strip())
    while fib_list[-1] < n:
        fib_list.append(fib_list[-1]+fib_list[-2])
    i=1
    tot = 0
    while i <len(fib_list) and fib_list[i] < n:
        tot += fib_list[i]
        i += 3
    sums.append(tot)
print(*sums, sep="\n")