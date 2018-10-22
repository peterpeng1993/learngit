# -*- coding: utf-8 -*-
"""
Created on Mon Apr  2 19:46:50 2018

@author: asus
"""

import pygame,sys
pygame.init()
screen=pygame.display.set_mode([640,480])
background=pygame.Surface(screen.get_size())
background.fill([255,255,255])
clock=pygame.time.Clock()

class Ball(pygame.sprite.Sprite):
    def __init__(self,image_file,speed,location):
        pygame.sprite.Sprite.__init__(self)
        self.image=pygame.image.load(image_file)
        self.rect=self.image.get_rect()
        self.rect.left,self.rect.top=location
        self.speed=speed
    def move(self):
        if self.rect.left<=screen.get_rect().left or \
           self.rect.right>=screen.get_rect().right:
            self.speed[0]=-self.speed[0]   
        newpos=self.rect.move(self.speed)
        self.rect=newpos

my_ball=Ball('b_ball_rect.png',[5,0],[10,10])#球的速度和位置
pygame.time.set_timer(pygame.USEREVENT,1000)#创建一个定时器

direction=1
running=True
while running:                                                                   
    for event in pygame.event.get():                                       
        if event.type == pygame.QUIT:                                      
            sys.exit()                                                     
        elif event.type == pygame.USEREVENT:                               
            my_ball.rect.centery = my_ball.rect.centery + (10 * direction) 
            if my_ball.rect.top <= 0 or  \
                    my_ball.rect.bottom >= screen.get_rect().bottom:               
                direction = -direction                                     
    clock.tick(50)                                                         
    screen.blit(background, (0, 0))                                        
    my_ball.move()                                                         
    screen.blit(my_ball.image, my_ball.rect)                                   
    pygame.display.flip()
pygame.quit()