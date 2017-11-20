    from itertools import combinations_with_replacement

    a = input().split()


    tmp = combinations_with_replacement(sorted(a[0]), int(a[1]))
    for j in tmp:
        print(''.join(j))