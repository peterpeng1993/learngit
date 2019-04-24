# -*- coding: utf-8 -*-
"""
Created on Thu Mar 28 10:52:43 2019

@author: peter peng
"""
import random
i=0
for i in range (0,100):
    a=random.randint(1,9)
    b=random.randint(1,9)
    c=random.randint(1,9)
    d=random.randint(1,9)
    e=random.randint(1,9)
    f=random.randint(1,9)
    m=a*10+b+e*100+f*1000
    n=c*10+d
    if m%n!=0:
        p=int(m/n)
        m=n*p
    print("{}÷{}=".format(m,n))
    i+=i

import random
i=0
for i in range(0,20):
    a=random.randint(1,16)
    b=5
    c=25
    if a/2!=0:
        a+=a
    d=a*b
    e=a*c
    print('{}÷{}='.format(d,b))
    print('{}÷{}='.format(e,c))
    print('{}×{}='.format(a,c))