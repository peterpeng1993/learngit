# Listing_11-4 
# Copyright Warren Sande, 2009
# Released under MIT license   http://www.opensource.org/licenses/mit-license.php
# Version 61  ----------------------------

# Trickier version of blocks of stars

numBlocks = int(input('How many blocks of stars do you want? '))
for block in range (0, numBlocks +1):
    for line in range (0, block * 2-1 ):                # formulas for number of 
        for star in range (0, (block + line) * 2):    #  lines and stars
            print ('*',end=''),
        print('*')
    print()
