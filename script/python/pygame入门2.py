# -*- coding: utf-8 -*-
"""
Created on Wed Mar 28 15:32:37 2018

@author: asus
"""


import pygame,sys
pygame.init()
screen=pygame.display.set_mode([640,480])
screen.fill([255,255,255])
pygame.draw.circle(screen,[255,0,0],[300,300],50,0)#在哪画圆，圆的颜色，圆心，半径大小，圆的线宽
pygame.display.flip()
running=True#创建可关闭的窗口
while running:
    for event in pygame.event.get():
        if event.type==pygame.QUIT:
                running=False            
pygame.quit()