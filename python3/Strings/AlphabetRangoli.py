def x(line, level):        # line, level
    string=chr(97+line)
    for i in range(1, level+1):
        string=chr(97+line+i)+'-'+string+'-'+chr(97+line+i)
    return string

def print_rangoli(size):
    for c,i in enumerate(range(size-1, 0, -1)):
        print(x(i, c).center((size-1)*4+1, "-"))
    print(x(0,size-1))
    for c, i in enumerate(range(1,size)):
        print(x(i,size-i-1).center((size-1)*4+1, "-"))
