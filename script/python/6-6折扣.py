# -*- coding: utf-8 -*-
"""
Created on Thu Mar  8 21:43:26 2018

@author: asus
"""

import easygui
n=int(easygui.integerbox('How much money does it cost you?'))
if n>=20:
    easygui.msgbox('You got 20% discount,and your final price is'' '+str(0.8*n))
elif n>=10:
    easygui.msgbox('You got 10% discount,and your final price is'' '+str(0.9*n))
else:
    easygui.msgbox('Sorry,you did not get discount,and your final price is'' '+str(n))   