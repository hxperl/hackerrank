from itertools import combinations

n = int(input())
s = input().split()
length = int(input())

combs = combinations(s, length)
count = 0
tot = 0
for i in combs:
    tot +=1
    if 'a' in i:
        count += 1
res = count/tot
print("%.4f" % res)