if __name__ == '__main__':
    N = int(input())
    tmp = list()
    for i in range(N):
        a = input().split(" ")
        if a[0] == 'insert':
            tmp.insert(int(a[1]), int(a[2]))
        elif a[0] == 'print':
            print(tmp)
        elif a[0] == 'remove':
            tmp.remove(int(a[1]))
        elif a[0] == 'append':
            tmp.append(int(a[1]))
        elif a[0] == 'sort':
            tmp.sort()
        elif a[0] == 'reverse':
            tmp.reverse()
        elif a[0] == 'pop':
            tmp.pop()