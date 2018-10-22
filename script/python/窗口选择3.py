# -*- coding: utf-8 -*-
"""
Created on Thu Mar  8 18:03:02 2018

@author: asus
"""

import easygui
flavor =easygui.enterbox('Who is your favorite NBA star?', default='Tim Duncan')
easygui.msgbox('you entered'' '+flavor)