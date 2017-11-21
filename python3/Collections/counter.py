from collections import Counter

n = int(input())
shoeses = list(map(int, input().split()))
customers = int(input())
shoeses = Counter(shoeses)


tot = 0
for i in range(customers):
    (size, price) = tuple(map(int, input().split()))
    if size in shoeses.keys():
        if shoeses[size] > 0:
            tot+=price
            shoeses[size] -= 1
print(tot)