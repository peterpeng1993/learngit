# -*- coding: utf-8 -*-
"""
Created on Fri Mar 16 21:35:43 2018

@author: asus
"""

import time
j=int(input('Count down timer:How many second?'))
for i in range (j,0,-1):
    print(i,end='')
    print('*'*i)
    time.sleep(1)   #延时1秒
print('BLAST OFF!')