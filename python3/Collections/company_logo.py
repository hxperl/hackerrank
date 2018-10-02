#!/bin/python3

import math
import os
import random
import re
import sys



if __name__ == '__main__':
    s = input()
    temp_list = list()
    for i in set(s):
        temp_tuple = (i, s.count(i))
        temp_list.append(temp_tuple)
    
    sorted_list = sorted(temp_list, key=lambda x: x[0], reverse=False)
    sorted_list2 = sorted(sorted_list, key=lambda x: x[1], reverse=True)
    for i in range(0,3):
        print(sorted_list2[i][0], sorted_list2[i][1])