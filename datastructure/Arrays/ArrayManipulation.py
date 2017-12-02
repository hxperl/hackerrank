#!/bin/python3

import sys

if __name__ == "__main__":
    n, m = input().strip().split(' ')
    n, m = [int(n), int(m)]
    tmp = [0 for _ in range(n+1)]
    for a0 in range(m):
        a, b, k = input().strip().split(' ')
        a, b, k = [int(a), int(b), int(k)]
        tmp[a-1] += k
        if b <= len(tmp):
            tmp[b] -= k
    qwe = maximum =0
    for i in tmp:
        qwe += i
        if maximum < qwe:
            maximum = qwe
    print(maximum)

"""
see, you are adding sum to a[p] and adding negative sum at a[q+1]. 
which make sure that when you add element from a[p] to a[q] sum is added 
only once and it should be subtracted at a[q+1] as this sum span from p to q only. 
Rest array element are either 0 or some other input sum. max of addition will be output.
refer to above code for p, q, and sum.
"""