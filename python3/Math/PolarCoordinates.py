import cmath
import re

n = input()

pattern = r"(-\d+|\d+)"
pattern2 = r"(-\d+j|\+\d+j)"

m = re.compile(pattern)
result = m.findall(n)


m2 = re.compile(pattern2)
result2 = m2.findall(n)

b = result2[0][:-1]


for i in result:
    if i is not b:
        a = i
        break
else:
    a = b

a = int(a)
b = int(b)


print(abs(complex(a, b)))
print(cmath.phase(complex(a, b)))