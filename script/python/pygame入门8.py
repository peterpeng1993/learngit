# -*- coding: utf-8 -*-
"""
Created on Wed Mar 28 20:54:11 2018

@author: asus
"""

import pygame,sys
import math
pygame.init()
screen=pygame.display.set_mode([800,600])
screen.fill([0,0,0])
my_ball=pygame.image.load('beach_ball.png')
x=50
y=50
x_speed=10
y_speed=10
m=screen.get_width()
n=screen.get_height()

running=True
while running:
    for event in pygame.event.get():
        if event.type==pygame.QUIT:
            running=False 
           
    pygame.time.delay(10)#延时
    pygame.draw.rect(screen,[255,255,255],[x,y,90,90],0)#擦掉第一个球
    x=x+x_speed
    #y=y+y_speed
    pass
    #if x>m-90 or x<0:
        #x_speed=-x_speed
    #if y>n-90 or y<0:
        #y_speed=-y_speed 
    if x>m:
        x=-90
    screen.blit(my_ball,[x,y])#blit使图像块移
    pygame.display.flip()#使图像可见
pygame.quit()

