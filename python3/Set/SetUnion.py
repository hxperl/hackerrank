n1 = int(input())
eng = set(map(int, input().split()))
n3 = int(input())
french = set(map(int, input().split()))

print(len(eng.union(french)))
