if __name__ == '__main__':
    n = int(input())
    arr = set(map(int, input().split()))
    max_num = max(arr)
    arr.remove(max_num)
    print(max(arr))