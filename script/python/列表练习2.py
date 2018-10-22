# -*- coding: utf-8 -*-
"""
Created on Mon Mar 19 17:15:34 2018

@author: asus
"""

phoneNumbers={}
phoneNumbers['John']='555-1234'
print(phoneNumbers)
phoneNumbers['Mary']='555-6789'
phoneNumbers['Bob']='444-4321'
phoneNumbers['Jenny']='867-5309'
print(phoneNumbers)
#######
print(phoneNumbers['Mary'])
print(type(phoneNumbers['Mary']))
print(phoneNumbers['John'])
print(phoneNumbers.keys())
print(type(phoneNumbers.keys()))
print(phoneNumbers.values())
print(type(phoneNumbers.values()))
#######
for key in sorted(phoneNumbers.keys()):
    print(key,phoneNumbers[key])
for value in sorted(phoneNumbers.values()):
    for key in phoneNumbers.keys():
        if phoneNumbers[key]==value:
            print(key,phoneNumbers[key])
del phoneNumbers['John']
print(phoneNumbers)
phoneNumbers.clear()
print(phoneNumbers)