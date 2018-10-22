# -*- coding: utf-8 -*-
"""
Created on Thu Mar  8 16:35:41 2018

@author: asus
"""

import easygui
flavor=easygui.buttonbox("Who is your favorite NBA star",
               choices=['Kobe Bryant','Micheal Jordan','Tim Duncan'])
easygui.msgbox('your picked'' '+flavor)