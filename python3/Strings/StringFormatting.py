def print_formatted(number):
    binary = bin(number)[2:]
    width = len(binary)
    for i in range(1, number+1):
        print(str(i).rjust(width, ' ')+' '+oct(i)[2:].rjust(width, ' ')+' '+hex(i)[2:].rjust(width, ' ').upper()+' '+bin(i)[2:].rjust(width,' '))


if __name__=='__main__':
    print_formatted(17)