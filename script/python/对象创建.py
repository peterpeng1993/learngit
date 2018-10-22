# -*- coding: utf-8 -*-
"""
Created on Thu Mar 22 20:09:38 2018

@author: asus
"""

class ball:#创建类
    def __init__(self,color,size,direction): #初始化       
        self.color=color
        self.size=size
        self.direction=direction
    
    def bounce(self):#定义对象属性
        if self.direction=='down':
            self.direction='up'
        elif self.direction=='up':
            self.direction='down'
    
myball=ball('yellow','big','up')
print('I just created a ball.')
print('my ball is',myball.size)
print('my ball is',myball.color)
print("My ball's direction is",myball.direction)
print('Now I am going to bounce the ball')
print
myball.bounce()
print("Now the ball's direction is",myball.direction)            