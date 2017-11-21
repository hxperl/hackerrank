from itertools import product


a = list(map(int, input().split()))

b = list()
for i in range(a[0]):
    tmp = list(map(int, input().split()))
    tmp = tmp[1:]
    b.append(tmp)

products = list(product(*b))

max_num = 0
for i in products:
    res = sum(list(map(lambda x: x**2, i)))%a[1]
    if res > max_num:
        max_num = res
print(max_num)