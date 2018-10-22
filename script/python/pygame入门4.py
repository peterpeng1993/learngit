# -*- coding: utf-8 -*-
"""
Created on Wed Mar 28 15:34:15 2018

@author: asus
"""
from pygame.color import THECOLORS
import pygame,sys,random
pygame.init()
screen=pygame.display.set_mode([1000,800])
screen.fill([255,255,255])
for i in range(60):
    width=random.randint(0,500)
    height=random.randint(0,300)
    top=random.randint(0,500)
    left=random.randint(0,500)
    pass
    #color_name=random.choice(THECOLORS.keys())
    #color=THECOLORS[color_name]
    #line_width=random.randint(1,5)
    #pygame.draw.rect(screen,color,[left,top,width,height],line_width)
    R=random.randint(0,255)    
    G=random.randint(0,255)
    B=random.randint(0,255)
    line_width=random.randint(1,5)
    pygame.draw.rect(screen,[R,G,B],[left,top,width,height],line_width)
pygame.display.flip()
running=True
while running:
    for event in pygame.event.get():
        if event.type==pygame.QUIT:
                running=False            
pygame.quit()