def merge_the_tools(string, k):
    size = len(string)
    line = int(size/k)
    ab=list()
    tmp = list(string)
    # print("length :", size)
    # print("line :", line)
    for i in range(0, size, k):
        ab=tmp[i:i+k]
        for index in range(len(ab)):
            if ab[index] in ab[:index]:
                ab[index]=''
        print(''.join(ab))

def merge_the_tools2(string, k):
    S=string
    N=k
    for part in zip(*[iter(S)] * N):
        d = dict()
        print(''.join([ d.setdefault(c, c) for c in part if c not in d ]))