# -*- coding: utf-8 -*-
"""
Created on Mon Mar 19 11:27:22 2018

@author: asus
"""

letters=['d','b','e','c','a']
letters.reverse()#reverse函数只将列表中的元素从右向左重新排列，无排序功能
print(letters)
letters.sort()#顺序排列
letters.reverse()#经过顺序排列后再进行逆序排列
print(letters)
#######
#######
#######
original_list=['25','46','37','18','56']
new_list=original_list[:]
new_list.reverse()
print(new_list)
print(original_list)
new_list.sort()
print(new_list)
new_list.reverse()
print(new_list)
#######
#######
#######
newer=sorted(original_list)
print('Tihs is a new list:',newer)

#元组——不可改变的列表
my_tuple=('red','yellow','blue')
print(type(my_tuple))