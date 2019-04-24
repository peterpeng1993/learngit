# -*- coding: utf-8 -*-
"""
Created on Wed Mar 27 16:12:02 2019

@author: peter peng
"""

def getInput():
    try:
        x=eval(input("请输入整数："))
        while x!=int(x):
            x=eval(input("请输入整数:"))#如果输入是数字
    except:
          return getInput()           #如果输入不是数字
    return x    
print(getInput())