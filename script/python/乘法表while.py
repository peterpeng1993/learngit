# -*- coding: utf-8 -*-
"""
Created on Sun Mar 11 21:01:17 2018

@author: asus
"""

print("Which multiplication table would you like?：")
i=int(input())
print('here is your table:')
j=1
while j <=10:
    print(i,'*' ,j,'=',i*j)
    j=j+1
    