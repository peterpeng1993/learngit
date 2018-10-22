12# -*- coding: utf-8 -*-
"""
Created on Mon Mar  5 16:19:01 2018

@author: asus
"""

def mysort1d(a):  #采用冒泡排序
    an=len(a)
    for i in range(an)[::-1]:
        for j in range(i):
            if a[j]>a[j+1]:
                a[j],a[j+1]=a[j+1],a[j]               
    return a

a=[int(i) for i in input('please input 3 number: ').split()]
print(mysort1d(a))
