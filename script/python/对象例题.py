# -*- coding: utf-8 -*-
"""
Created on Mon Mar 26 08:56:37 2018

@author: asus
"""
class HotDog:
    def __init__(self):
        self.cocked_level=0
        self.cocked_string='Raw'
        self.condiments=[]#列表
    def __str__(self): #改变对象的打印方式
        msg='hot dog'
        if len(self.condiments)>0:#字符串长度
            msg=msg+' with '
        for i in self.condiments:
            msg=msg+i+', '
        msg=msg.strip(', ')#删除字符串开头和结尾的‘， ’
        msg=self.cocked_string+' '+msg+'.'#最终的输出结果
        return msg
    def cock(self,time):
        self.cocked_level=self.cocked_level+time
        if self.cocked_level>8:
            self.cocked_string='Charcoal'
        elif self.cocked_level>5:
            self.cocked_string='Well-done'
        elif self.cocked_level>3:
            self.cocked_string='Medium'
        else:
            self.cocked_string='Raw'    
    def addCondiment(self,condiment):
        self.condiments.append(condiment)       
myDog=HotDog()
print(myDog)
print('Now I am going to cock the hot dog.Cocking hotdog for 4 minutes.')
myDog.cock(4)
print(myDog)
print('Cocking hot dog for 3 minutes.')
myDog.cock(3)
print(myDog)
print('What happens if I cock it for 10 more minutes?')
myDog.cock(10)
print(myDog)
print('Now,I am going to add some stuff on my hot dog')
myDog.addCondiment('ketchup')
myDog.addCondiment('mustard')
print(myDog)