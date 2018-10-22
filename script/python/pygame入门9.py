# -*- coding: utf-8 -*-
"""
Created on Thu Mar 29 20:26:31 2018

@author: asus
"""
import sys,pygame
from random import choice

class MyBallClass(pygame.sprite.Sprite):
    def __init__(self,image_file,location,speed):
        pygame.sprite.Sprite.__init__(self)
        self.image=pygame.image.load(image_file)
        self.rect=self.image.get_rect()
        self.rect.left, self.rect.top=location
        self.speed=speed
    def move(self):
        self.rect=self.rect.move(self.speed)
        if self.rect.left<0 or self.rect.right>width:
            self.speed[0]=-self.speed[0]
        if self.rect.top<0 or self.rect.bottom>height:
            self.speed[1]=-self.speed[1]
def animate(group):
    screen.fill([255,255,255])
    for ball in group:
        ball.move()
    for ball in group:
        group.remove(ball)
        if pygame.sprite.spritecollide(ball,group,False):#检查球的碰撞
            ball.speed[0]=-ball.speed[0]
            ball.speed[1]=-ball.speed[1]
        group.add(ball)
        screen.blit(ball.image,ball.rect)
    pygame.display.flip()
size=width,height=800,640
screen=pygame.display.set_mode(size)
screen.fill([255,255,255])
img_file='b_ball_rect.png'
clock=pygame.time.Clock()#创建Clock的实例
group=pygame.sprite.Group()
for row in range(0,2):
    for column in range(0,2):
        location=[column*180+10,row*180+10]
        speed=[choice([-3,3]),choice([-3,3])]
        ball=MyBallClass(img_file,location,speed)
        group.add(ball)#把球加到群组中

running=True
while running:
    for event in pygame.event.get():
        if event.type==pygame.QUIT:
            running=False
            frame_rate=clock.get_fps()#得到帧速率
            print('frame rate =',frame_rate)
    animate(group)
    clock.tick(90)#控制帧速率
pygame.quit()
        