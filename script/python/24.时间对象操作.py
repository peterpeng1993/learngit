# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""
import datetime 
when=datetime.datetime(2018,6,4,9,26)
print(when)
today=datetime.date(2018,6,4)
some_time=datetime.time(9,26)
print(today)
print(some_time)
print(datetime.datetime.now())#给出计算机现在的时间
import datetime
yesterday=datetime.date(2018,6,3)
tomorrow=datetime.date(2018,6,5)
difference=tomorrow-yesterday
print(difference)
print(type(difference))#class 'datetime.timedelta',两个时间之差