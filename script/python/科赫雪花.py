# -*- coding: utf-8 -*-
"""
Created on Tue Feb 26 16:29:08 2019

@author: peter peng
"""
#KochDraw
import turtle
def koch(size,n):
    if n==0:
        turtle.fd(size) 
    else:
        for angle in [0,60,-120,60]:
            turtle.left(angle)
            koch(size/3,n-1)
def main():
    turtle.setup(1000,800)
    turtle.penup() 
    turtle.goto(-200,200)
    turtle.pendown()
    turtle.pensize(2)
    level=4
    koch(360,level)
    turtle.right(120)
    koch(360,level)
    turtle.right(120)
    koch(360,level)
    turtle.hideturtle()
main()
