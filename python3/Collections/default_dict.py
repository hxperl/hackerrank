from collections import defaultdict

a = input().split()


d = defaultdict(list)
for i in range(1, int(a[0])+1):
    tmp = input()
    d[tmp].append(i)


for i in range(int(a[1])):
    c = input()
    if c in d.keys():
        print(*d[c], sep=' ')
    else:
        print(-1)