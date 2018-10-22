# -*- coding: utf-8 -*-
"""
Created on Fri Mar 16 21:41:30 2018

@author: asus
"""

import time
j=int(input('Count down timer:How many second?'))
for i in range (j,0,-1):
    print (i,end='')
    for star in range(i):    
        print('*',end='')
    print()
    time.sleep(1)
print('BLAST OFF!')