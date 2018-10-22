# -*- coding: utf-8 -*-
"""
Created on Mon Mar 19 09:07:08 2018

@author: asus
"""

numBlocks=int(input('How many blocks of stars do you want?'))
for block in range(1,numBlocks+1):
    print('block=',block)
    for line in range(1,block*2):
        for star in range((block+line)*2):
            print('*',end='')
        print('line=',line,'star=',star)
    print    