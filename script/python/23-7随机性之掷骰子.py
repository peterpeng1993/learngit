# -*- coding: utf-8 -*-
"""
Created on Tue May  8 14:49:26 2018

@author: asus
"""

import random
totals=[0,0,0,0,0,0,0,0,0,0,0,0,0]
for i in range(10000):
    die_1=random.randint(1,6)
    die_2=random.randint(1,6)
    dice_total=die_1+die_2
    totals[dice_total] +=1
for i in range(2,13):
    print("total",i,"came up",totals[i],"times")

import random
totals=[0,0,0,0,0,0,0,0,0,0,0,0,0]    #列表的索引从0开始，到12结束。
for i in range(10000):
    dice_total=random.randint(2,12)
    totals[dice_total] +=1
for i in range(2,13):
    print("total",i,"came up",totals[i],"times")
    