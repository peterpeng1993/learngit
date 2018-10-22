# -*- coding: utf-8 -*-
"""
Created on Mon Mar 19 19:40:44 2018

@author: asus
"""

namelist=[]
print('Enter 5 names(press the Enter key after each name):')
for i in range(5):
    name=input()
    namelist.append(name)
print('The names are',namelist)
new_namelist=namelist[:]
new_namelist.sort()
print('The sorted names are:',new_namelist)
print('The third name is:',namelist[2])
print('replace one name,which one?(1-5):',)
replace=int(input())
new=input('new name is:',)
namelist[replace-1]=new
print('The new namelist is :',namelist)