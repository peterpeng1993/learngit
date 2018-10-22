# -*- coding: utf-8 -*-
"""
Created on Thu Mar  8 21:25:01 2018

@author: asus
"""


import easygui
name=easygui.enterbox("What's your name?")
addr=easygui.enterbox("Where are you from?")
code=easygui.enterbox("What is your postal code or zip code?")
whole_addr=name+"\n"+addr+"\n"+code
easygui.msgbox(whole_addr, "Here is your address:")