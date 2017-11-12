K = int(input())
rooms = list(map(int, input().split()))

room_numbers = set(rooms)

for i in room_numbers:
    rooms.remove(i)


room_numbers.difference_update(set(rooms))

print(''.join(room_numbers))
