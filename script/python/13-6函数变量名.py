# -*- coding: utf-8 -*-
"""
Created on Tue Mar 20 16:18:49 2018

@author: asus
"""
#局部变量和全局变量
def calculatetax(price,tax_rate):
    tax_total=price+(price*tax_rate)
    global my_price#强制变局部变量为全局变量
    my_price=10000
    print('my_price(inside function)=',my_price)
    return tax_total
my_price=float(input('Enter a price:',))
tax_rate=float(input('tax_rate=',))
total_price=calculatetax(my_price,tax_rate)
print('price=',my_price,'total price=',total_price)
print(my_price)
print(tax_rate)