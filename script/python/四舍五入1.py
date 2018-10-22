# -*- coding: utf-8 -*-
"""
Created on Wed Mar  7 15:07:04 2018

@author: asus
"""
print("Enter your number：",input())
a=float(input())
if a-int(a)<0.5:
    a=int(a)
else:
    a=int(a)+1
print(a)    