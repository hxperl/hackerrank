n = int(input())
s = set(map(int, input().split())) 
ncmd = int(input())
for i in range(ncmd):
    cmd = input().split()
    if len(cmd) == 1 and cmd[0] == 'pop':
        s.pop()
    elif len(cmd) == 2:
        if cmd[0] == 'remove':
            s.remove(int(cmd[1]))
        elif cmd[0] == 'discard':
            s.discard(int(cmd[1]))
print(sum(s))