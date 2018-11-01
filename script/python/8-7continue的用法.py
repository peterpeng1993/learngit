# -*- coding: utf-8 -*-
"""
Created on Wed Oct 24 10:22:53 2018

@author: peter peng
"""

for i in range(10):
    if i%2!=0:
        print(i)
        continue
    i+=2
    print(i)