from itertools import groupby

a = input()

for i in groupby(a):
    tmp = (len(list(i[1])), int(i[0]))
    print(tuple(tmp), end=" ")