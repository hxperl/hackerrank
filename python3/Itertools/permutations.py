from itertools import permutations

a, b = input().split()
b = int(b)

for i in sorted(permutations(a, b)):
    print(''.join(i))