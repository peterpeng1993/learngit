# -*- coding: utf-8 -*-
"""
Created on Wed Mar 28 19:34:21 2018

@author: asus
"""

import pygame,sys
import math
pygame.init()
screen=pygame.display.set_mode([1000,800])
screen.fill([255,255,255])
plotPoints=[]
for x in range(0,1000):
    y=int(math.sin(-x/1000*4*math.pi)*200+240)
    y1=int(math.sin(-x/1000*4*math.pi)*200+400)
    plotPoints.append([x,y1])
    pygame.draw.rect(screen,[0,0,0],[x,y,1,1],2)#微小的矩形组成点线
pygame.draw.lines(screen,[255,0,0],False,plotPoints,1)#连线语句要放在for循环外
pygame.display.flip()
running=True
while running:
    for event in pygame.event.get():
        if event.type==pygame.QUIT:
            running=False            
pygame.quit()
