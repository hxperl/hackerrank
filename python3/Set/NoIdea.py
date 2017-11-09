input()
array = list(map(int, input().split()))
arr_a = set(map(int, input().split()))
arr_b = set(map(int, input().split()))


happiness =0
for i in array:
    if i in arr_a:
        happiness += 1
    if i in arr_b:
        happiness -= 1

print(happiness)

