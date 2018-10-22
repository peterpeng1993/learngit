# -*- coding: utf-8 -*-
"""
Created on Wed Mar 28 16:34:56 2018

@author: asus
"""
#暂时无法运行，问题待解决。
from pygame.color import THECOLORS
import pygame,sys,random
pygame.init()
screen=pygame.display.set_mode([1000,800])
screen.fill([255,255,255])
for i in range(30):
    width=random.randint(0,500)
    height=random.randint(0,300)
    top=random.randint(0,500)
    left=random.randint(0,500)
    color_name=random.choice(THECOLORS.keys())
    color=THECOLORS[color_name]
    line_width=random.randint(1,5)
    pygame.draw.rect(screen,color,[left,top,width,height],line_width)
running=True
while running:
    for event in pygame.event.get():
        if event.type==pygame.QUIT:
                running=False            
pygame.quit()