# Listing 11-5
# Copyright Warren Sande, 2009
# Released under MIT license   http://www.opensource.org/licenses/mit-license.php
# Version 61  ----------------------------

# Printing the loop variables in nested loops

numBlocks = int(input('How many blocks of stars do you want? '))
for block in range (0, numBlocks):
    print ('block = ', block+1)
    for line in range (0, block * 2+1):
        for star in range (0, (block + line) * 2+1): 
            print('*',end='')
        print ('  line = ', line+1, 'star = ', star+1)
    print()


