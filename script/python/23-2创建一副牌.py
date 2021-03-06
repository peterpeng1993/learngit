# Listing_23-2.py
# Copyright Warren Sande, 2009
# Released under MIT license   http://www.opensource.org/licenses/mit-license.php
# Version 61  ----------------------------

# Rolling two six-sided dice 1000 times.

import random

totals = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
for i in range(1000):
    die_1 = random.randint(1, 6)
    die_2 = random.randint(1, 6)
    dice_total = die_1 + die_2
    totals[dice_total] += 1
    
for i in range (2, 13): 
    print ("total", i, "came up", totals[i], "times")
