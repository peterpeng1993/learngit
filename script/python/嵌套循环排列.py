# -*- coding: utf-8 -*-
"""
Created on Wed Mar 14 20:52:32 2018

@author: asus
"""
numBlocks=int(input('how many blocks do you want?'))
numLines=int(input('How many lines of stars do you want?'))
numStars=int(input('How many stars do you want?'))
for block in range(0,numBlocks):
    for line in range(0,numLines):
        for i in range(0,numStars):
            print("*",end='')
        print() 
    print()   