a = int(input())
b = set(map(int, input().split()))
c = int(input())
d = set(map(int, input().split()))

x = b.difference(d)
y = d.difference(b)

for i in sorted(list(x.union(y))):
    print(i)