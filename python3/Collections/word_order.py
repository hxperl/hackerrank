from collections import OrderedDict

a = int(input())
od = OrderedDict()
for i in range(a):
    tmp = input()
    if tmp in od.keys():
        od[tmp] += 1
    else:
        od[tmp] = 1

print(len(od.keys()))
print(*od.values(), sep=' ')