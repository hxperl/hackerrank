from __future__ import division

def average(array):
    new_set = set(array)
    length = len(new_set)
    result = sum(new_set)/length

    return result