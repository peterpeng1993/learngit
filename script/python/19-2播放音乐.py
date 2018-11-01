# -*- coding: utf-8 -*-
"""
Created on Tue Apr  3 21:36:05 2018

@author: asus
"""

import pygame,sys
pygame.init()      #初始化pygame
pygame.mixer.init()#初始化mixer模块

screen=pygame.display.set_mode([640,480])#设定屏幕大小
pygame.time.delay(1000)                  #延时1秒

pygame.mixer.music.load('bg_music.mp3')
pygame.mixer.music.set_volume(0.5)   #调节音量
pygame.mixer.music.play()  #括号内可加播放次数，若为负数则一直播放
#splat=pygame.mixer.Sound('splat.wav')
#splat.set_volume(0.5)            #调节音效音量
#splat.play()

running=True
while running:
    for event in pygame.event.get():
        if event.type==pygame.QUIT:
            running=False
    
    if not pygame.mixer.music.get_busy():#判断音乐播放器是否在工作
        splat=pygame.mixer.Sound('splat.wav')
        splat.set_volume(0.5)            #调节音效音量
        splat.play()
        pygame.time.delay(1000)
        running=False
pygame.quit()