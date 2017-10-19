def split_and_join(line):
    line = line.split(" ")
    line = '-'.join(line)
    return line
if __name__ == '__main__':
    string='this is a string'
    print(split_and_join(string))