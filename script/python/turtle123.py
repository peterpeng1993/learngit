# -*- coding: utf-8 -*-
"""
Created on Sun Feb 24 19:49:09 2019

@author: peter peng
"""
import turtle              #文件名不要与库名相同
turtle.setup(650,350,200,200)
turtle.penup()             #抬起画笔
turtle.fd(-250)
turtle.pendown()           #放下画笔 
turtle.pensize(25)         #宽度
turtle.pencolor("purple")
turtle.seth(-40)           #方向
for i in range(4):
    turtle.circle(40,80)   #（半径，弧度）
    turtle.circle(-40,80)
turtle.circle(40,80/2)
turtle.fd(40)              #（方向）
turtle.circle(16,180)
turtle.fd(40 * 2/3)
turtle.done()


