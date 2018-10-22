# -*- coding: utf-8 -*-
"""
Created on Mon Mar 26 15:57:49 2018

@author: asus
"""

class Triangle:
    def __init__(self,width,height):
        self.width=width
        self.height=height
    def getArea(self):
        area=self.width*self.height/2.0
        return area
    def __str__(self):
        msg="Square's area is "
        msg=msg+area+'.'
        return msg
class Square:
    def __init__(self,size):
        self.size=size
    def getArea(self):
        area=self.size*self.size
        return self.area
    def __str__(self):
        msg="Square's area is "
        msg=msg+area+'.'
        return msg

myTriangle=Triangle(4,5)
mySquare=Square(7)
