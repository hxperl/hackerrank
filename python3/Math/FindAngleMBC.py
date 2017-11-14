import math

a = int(input())
b = int(input())


line = math.sqrt(math.pow(a, 2) + math.pow(b, 2))
angle = math.acos(b/line)
print(str(int(round(math.degrees(angle))))+"°")
