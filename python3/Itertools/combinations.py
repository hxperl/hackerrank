from itertools import combinations

a = input().split()

for i in range(1, int(a[1])+1):
    tmp = combinations(sorted(a[0]), i)
    for j in tmp:
        print(''.join(j))