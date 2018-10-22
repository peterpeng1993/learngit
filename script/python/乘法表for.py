# -*- coding: utf-8 -*-
"""
Created on Sun Mar 11 21:01:17 2018

@author: asus
"""

print("Which multiplication table would you like?")
i=int(input())
print('here is your table:')
for j in range(1,11):
    print(i,'*' ,j,'=',i*j)
    