# -*- coding: utf-8 -*-
"""
Created on Mon Mar 19 09:21:39 2018

@author: asus
"""
#列表练习，第一个元素的位置是0
friends=[]
numbers=[]
friends.append('David')
print(friends)
friends.append('Lily')
print(friends)
friends.append('Peter')
print(friends)
friends.append('Wang')#append每次只能加一个元素
print(friends)
friends.extend(['Lilei','Hanmeimei','Harden','Rooney'])#extend可以按列表增加多个元素
print(friends)
print(friends[1])#列表中的第二个元素
print(friends[1:3])#列表中第二和第三个元素
print(friends[2:3])#列表中第三个元素
print(friends[:3])#列表中前三个元素
print(friends[1:])#列表中从第二个开始到最后一个元素
print(friends.index('Hanmeimei'))
friends.remove('Wang')#移除某个元素
print(friends)
if 'Wang' in friends:
    print("found 'Wang' in friends")
else:
    print("didn't find 'Wang' in friends")
print(friends.index('Hanmeimei'))
print(type(friends.index('Hanmeimei')))
print(type(friends[1]))
print(type(friends[:1]))
numbers.extend(['4','2','8','5','7'])
print(numbers)
print(numbers[1])
numbers.insert(5,'1')
print(numbers)
del numbers[5]
last_number=numbers.pop()
print(numbers)
print(last_number)
