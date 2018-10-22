# Listing_22-7.py
# Copyright Warren Sande, 2009
# Released under MIT license   http://www.opensource.org/licenses/mit-license.php
# Version 61  ----------------------------

# Unpickling using load()

import pickle

pickle_file = open('my_pickled_list.pkl', 'rb+')   #Python3中读写文件后要加b+，保证存储文件为二进制格式
recovered_list = pickle.load(pickle_file)
pickle_file.close()

print (recovered_list)

