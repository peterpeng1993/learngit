# -*- coding: utf-8 -*-
"""
Created on Wed Mar 28 14:47:24 2018

@author: asus
"""
from pygame.color import THECOLORS
import pygame,sys
pygame.init()
screen=pygame.display.set_mode([1000,800])
screen.fill([255,255,255])
pygame.draw.circle(screen,THECOLORS['black'],[50,50],50,0)#在哪画圆，圆的颜色，圆心，半径大小，圆的线宽
pygame.draw.rect(screen,[111,111,111],[400,200,200,200],5)#矩形
my_list=[500,400,100,100]
pygame.draw.rect(screen,[231,1,231],my_list,0)
pygame.display.flip()
running=True#创建可关闭的窗口
while running:
    for enent in pygame.event.get():
        if enent.type==pygame.QUIT:
                running=False            
pygame.quit()            