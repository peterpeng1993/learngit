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
empty=[]
number=empty
number.append(3)       #添加元素
print(number)
number.extend([4,5])   #扩展列表
print(number)
a=number
print(number)
print(a)
print(number)
number=a.insert(1,2)  #在2号位插入2 
print(number)         #结果为空
print(a)
number=a.insert(0,1)  #在1号位插入1
print(a)
print(number)
print(a[0])
print(a[4])
a[1],a[2]=a[2],a[1]   #将第2个元素与第3个元素对换
print(a)
print(a.pop(2))       #弹出列表中3号位的元素
a.remove(4)           #删除列表中的元素
print(a) 
del a[0]              #删除1号位的元素
print(a)
del a                 #删除整个元素列表