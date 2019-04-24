# -*- coding: utf-8 -*-
"""
Created on Mon Mar 25 16:39:45 2019

@author: peter peng
"""

txt1 = '''
人生得意须尽欢，莫使金樽空对月。
天生我材必有用，千金散尽还复来。
'''
txt2 = '''
三国演义 上卷
罗贯中
 
滚滚长江东逝水，浪花淘尽英雄。是非成败转头空。青山依旧在，几度夕阳红。
白发渔樵江渚上，惯看秋月春风。一壶浊酒喜相逢。古今多少事，都付笑谈中。
--调寄《临江仙》
第一回  宴桃园豪杰三结义  斩黄巾英雄首立功
话说天下大势，分久必合，合久必分。周末七国分争，并入于秦。及秦灭之后，楚、汉分争，又并入于汉。汉朝自高祖斩白蛇而起义，一统天下，后来光武中兴，传至献帝，遂分为三国。
'''

linewidth = 30                          # 预定的输出宽度
def lineSplit(line):
    plist = [',', '!', '?', '，', '。', '！', '？']
    for p in plist:
        line = line.replace(p, '\n')    # 以转行代替标点
    return line.split('\n')    
def linePrint(line):
    global linewidth
    print(line.center(linewidth, chr(12288)))

newlines = lineSplit(txt1)
for newline in newlines:
    linePrint(newline)
newlines = lineSplit(txt2)
for newline in newlines:
    linePrint(newline)
