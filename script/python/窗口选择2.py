# -*- coding: utf-8 -*-
"""
Created on Thu Mar  8 17:15:03 2018

@author: asus
"""

import easygui
flavor=easygui.choicebox("Who is your favorite NBA star",
               choices=['Kobe Bryant','Micheal Jordan','Tim Duncan'])
easygui.msgbox('your picked'' '+flavor)