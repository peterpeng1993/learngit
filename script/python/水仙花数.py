# -*- coding: utf-8 -*-
"""
Created on Tue Mar 26 10:42:46 2019

@author: peter peng
"""
max_num=999999
def narcissistic_number_1(num):  
    length = len(str(num))
    count = length    
    num_sum = 0    
    while count:        
        num_sum += ((num // 10 ** (count - 1)) % 10) ** length     
        count -= 1    
    else:       
        if num_sum == num:            
            print("%d is %d bit narcissistic_number" % (num, length))
        else:
            print(end='')
for num in range(0, max_num):
    narcissistic_number_1(num) 
