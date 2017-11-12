a = int(input())
set_a = set(map(int, input().split()))
b = int(input())

for _ in range(b):
    read = input().split()
    cmd = read[0]
    new_set = set(map(int,input().split()))
    if cmd == 'intersection_update':
        set_a.intersection_update(new_set)
    elif cmd == 'update':
        set_a.update(new_set)
    elif cmd == 'symmetric_difference_update':
        set_a.symmetric_difference_update(new_set)
    elif cmd == 'difference_update':
        set_a.difference_update(new_set)

print(sum(set_a))