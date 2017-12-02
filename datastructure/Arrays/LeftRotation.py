#!/bin/python3

import sys

def leftRotation(a, d):
    # Complete this function
    length = len(a)
    while d != 0:
        if d > length:
            d -= length
        elif d < length:
            tmp = a[:d]
            a = a[len(tmp):length]
            a = a+tmp
            d = 0
    
    return a

if __name__ == "__main__":
    n, d = input().strip().split(' ')
    n, d = [int(n), int(d)]
    a = list(map(int, input().strip().split(' ')))
    result = leftRotation(a, d)
    print (" ".join(map(str, result)))