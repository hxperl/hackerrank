a = int(input())

arr1 = list()
arr2 = list()
for i in range(a):
    arr1.append(input())

b = int(input())

for i in range(b):
    arr2.append(input())


result = list()
for i in arr2:
    count =0
    for j in arr1:
        if i == j:
            count += 1
    result.append(count)
for i in result:
    print(i)