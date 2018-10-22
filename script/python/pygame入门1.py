# -*- coding: utf-8 -*-
"""
Created on Wed Mar 28 10:59:42 2018

@author: asus
"""

import pygame
pygame.init()
screen=pygame.display.set_mode([640,480])
running=True#创建可关闭的窗口
while running:
    for enent in pygame.event.get():
        if enent.type==pygame.QUIT:
                running=False            
pygame.quit()            