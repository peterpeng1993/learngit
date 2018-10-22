# -*- coding: utf-8 -*-
"""
Created on Tue Mar 27 16:03:44 2018

@author: asus
"""

from my_module import c_to_f#导入模块
celsius=float(input('Enter a temperature in Celsius: '))
fahrenheit=c_to_f(celsius)#从命名空间导入函数名
print("That's",fahrenheit,"degrees Fahrenheit.")

