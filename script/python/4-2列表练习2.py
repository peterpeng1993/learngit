# -*- coding: utf-8 -*-
"""
Created on Mon Mar 19 17:15:34 2018

@author: asus
"""

phoneNumbers={}
phoneNumbers['John']='555-1234'
print(phoneNumbers)
phoneNumbers['Mary']='555-6789'
phoneNumbers['Bob']='444-4321'
phoneNumbers['Jenny']='867-5309'
print(phoneNumbers)
#######
print(phoneNumbers['Mary'])
print(type(phoneNumbers['Mary']))
print(phoneNumbers['John'])
print(phoneNumbers.keys())
print(type(phoneNumbers.keys()))
print(phoneNumbers.values())
print(type(phoneNumbers.values()))
#######
for key in sorted(phoneNumbers.keys()):
    print(key,phoneNumbers[key])
for value in sorted(phoneNumbers.values()):
    for key in phoneNumbers.keys():
        if phoneNumbers[key]==value:
            print(key,phoneNumbers[key])
del phoneNumbers['John']
print(phoneNumbers)
phoneNumbers.clear()
print(phoneNumbers)
JoeMarks=[55,63,77,81]
TomMarks=[65,61,67,72]
BethMarks=[97,95,92,88]
mathMarks=[55,65,97]
scientistMarks=[63,61,95]
readMarks=[77,67,92]
spellingMarks=[81,72,88]
classMarks=[JoeMarks,TomMarks,BethMarks]
print(classMarks)
for studentMarks in classMarks:
    print(studentMarks)
print(classMarks[0])
print(classMarks[1][1])
print(classMarks)
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