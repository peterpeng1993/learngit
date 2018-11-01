# -*- coding: utf-8 -*-
"""
Created on Tue Mar  6 20:17:42 2018

@author: asus
"""

import random
secret = random.randint(1, 99)
guess = 0
tries = 0
print("AHOY! I'm Peter, and I have a secret!")
print("It's a number from 1 to 99. I'll give you 6 tries.")
while guess != secret and tries < 6:
    guess = int(input('what is your guess?'))
    if guess < secret:
        print('too low.')
    elif guess > secret:
        print('too high')
   
    tries = tries + 1

if guess == secret:
    print('got it')
else:
    print('bad luck')
    print('the number was', secret)
    
    
    