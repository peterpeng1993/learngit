# -*- coding: utf-8 -*-
"""
Created on Thu Mar  8 20:45:32 2018

@author: asus
"""

import random,easygui
secret = random.randint(1, 99)
guess = 0
tries = 0
easygui.msgbox("Hi! I'm Peter, and I have a secret. It's a number from 1 to 99. I'll give you 6 tries.")
while guess != secret and tries < 6:
    guess = easygui.integerbox('What is your guess?')
    if not guess:break
    if guess < secret:
        easygui.msgbox(str(guess)+' ''is too low.')
    elif guess > secret:
        easygui.msgbox(str(guess)+' ''is too high')
   
    tries = tries + 1
if guess == secret:
    easygui.msgbox('You got it!')
else: 
    easygui.msgbox('Bad luck! The number was'' '+str(secret))