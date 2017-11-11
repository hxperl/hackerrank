# 토끼와 당근밭을 불러올 모듈을 호출합니다.
from elicerabbits2 import *

# 당근밭의 크기를 자유롭게 바꾸면서 소환 해보세요.
create_world(avenues=5, streets=5)
# create_world(avenues=6, streets=6)
# create_world(avenues=7, streets=7)

# 당근을 1000개 가지고 있는 토끼를 소환합니다. 
rabbit = Rabbit(carrots=100000)
rabbit.set_trace('red')
rabbit.set_pause(0.1)

def move_back():
    rabbit.turn_left()
    rabbit.turn_left()
    rabbit.move()
    rabbit.turn_left()
    rabbit.turn_left()

def drop_carrot(n):         # 인자 수 많큼 당근을 심는다
    for i in range(n):
        rabbit.drop_carrot()

rabbit.drop_carrot() # 처음에 하나 심고 시작

num = 2

while True:
    while rabbit.front_is_clear(): # 벽이 없으면 계속
        rabbit.move()
        if rabbit.on_carrot(): # 당근이 있는 경우
            move_back()         # 뒤로 간다.
            break
        drop_carrot(num)    # 당근을 심는다
        num+=1   # 다음에 심어야할 개수
    # 벽에 부딛히거나 앞에 당근이 있는 경우
    rabbit.turn_left()  # 왼쪽으로 돌아서 
    rabbit.move()   # 앞에 한번 가본다.
    if rabbit.on_carrot():  #  당근이 있으면 종료
        move_back()
        break
    else:                   # 당근이 없으면 다시 제자리로 온다.
        move_back()