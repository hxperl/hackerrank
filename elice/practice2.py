import pprint


width = 8
height = 8
matrix = [[0 for i in range(width)] for j in range(height)]
# 돌고 돌면서 당근을 심어볼까요?!

i, j = (height-1), 0

def right(x, y):
    return (x, y+1)
def up(x, y):
    return (x-1, y)
def down(x, y):
    return (x+1, y)
def left(x, y):
    return (x, y-1)


direction = [right, up, left, down]
dir_index = 0
while any(0 in li for li in matrix):
    if matrix[i][j] == 0:
        # rabbit.drop_carrot()
        matrix[i][j] = 1
    new_i, new_j = direction[dir_index](i, j)
    if new_i > (height-1) or new_j > (width-1) or matrix[new_i][new_j] == 1:
        dir_index += 1
        if dir_index > 3:
            dir_index = 0
        # rabbit.turn_left()
        # rabbit.move()
    else:
        i , j = new_i, new_j
        # rabbit.move()
    pprint.pprint(matrix)   
    print("\n\n")