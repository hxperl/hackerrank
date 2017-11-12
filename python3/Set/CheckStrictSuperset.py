new_set = set(map(int, input().split()))

n = int(input())

for _ in range(n):
    tmp = set(map(int, input().split()))
    if new_set.union(tmp) != new_set:
        print(False)
        break
else:
    print(True)