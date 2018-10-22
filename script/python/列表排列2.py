# -*- coding: utf-8 -*-
"""
Created on Mon Mar 19 15:43:55 2018

@author: asus
"""

JoeMarks=[55,63,77,81]
TomMarks=[65,61,67,72]
BethMarks=[97,95,92,88]
mathMarks=[55,65,97]
scientistMarks=[63,61,95]
readMarks=[77,67,92]
spellingMarks=[81,72,88]
classMarks=[JoeMarks,TomMarks,BethMarks]
print(classMarks)
for studentMarks in classMarks:
    print(studentMarks)
print(classMarks[0])
print(classMarks[1][1])
print(classMarks)