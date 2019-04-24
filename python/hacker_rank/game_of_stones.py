import random
import math

t = []

for n in range(int(raw_input())):
    t.append(int(raw_input()))

curr_player = ''
winner = None

def other_player(curr_player):
    if curr_player == 'First':
        return 'Second'
    else:
        return 'First'

def make_move(available):
    if available == 1:
        return 0
    elif available == 2:
        return 2
    elif available == 3:
        return 3
    elif available == 4:
        return 3
    elif available == 5:
        return 5
    elif available == 6:
        return 5
    elif available == 7:
        return 2
    elif available == 8:
        return 2
    elif available == 9:
        return 2
    elif available == 10:
        return 2
    else:
        return [2, 3, 5][int(math.ceil(random.uniform(1,3)))]

def play_game(n):
    winner = None

    while n > 1:
        curr_player = other_player(curr_player)
        move = make_move(n)
        n -= move

    winner = other_player(curr_player)
    print winner

for n in t:
    play_game(t[n])
