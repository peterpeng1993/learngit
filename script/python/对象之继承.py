# -*- coding: utf-8 -*-
"""
Created on Tue Mar 27 15:13:54 2018

@author: asus
"""

class GameObject:
    def __init__(self,name):
        self.name=name
    def pickUp(self,player):
        pass
        #put code here to add the object
        #to the player's colloction
        
class Coin(GameObject):#Coin是的GameObject的子类
    def __init__(self,value):
        GameObject.__init__(self,'coin')#继承GameObject的初始化方法并补充新内容
        self.value=value
        
    def spend(self,buyer,seller):
        pass
        #put code here to remove the coin
        #from the buyer's money and
        #add it to the seller's money
        