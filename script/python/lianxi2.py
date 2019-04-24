# -*- coding: utf-8 -*-
"""
Created on Wed Mar 27 17:06:03 2019

@author: peter peng
"""

ls = ["car","truck"]
def funC(a):       
    ls =[]
    ls.append(a)           #在未进行global声明时，函数内部变量ls只是一个形参 
    return
funC("bus")
print(ls)