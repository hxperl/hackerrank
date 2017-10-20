def wrap(string, max_width):
    lines = len(string)/max_width
    tmp = list(string)
    for i in range(1, int(lines)+1):
        tmp.insert((i*max_width)+i-1,'\n' )
    return ''.join(tmp)
