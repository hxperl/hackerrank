def swap_case(s):
    tmp = list()
    for i in s:
        if i.isupper():
            tmp.append(i.lower())
        else:
            tmp.append(i.upper())
    return ''.join(tmp)
if __name__=='__main__':
    string = 'fsdojfSFQsodifoqf'
    print(swap_case(string))