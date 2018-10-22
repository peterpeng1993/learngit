# Listing_22-6.py
# Copyright Warren Sande, 2009
# Released under MIT license   http://www.opensource.org/licenses/mit-license.php
# Version 61  ----------------------------

# Using pickle to store a list to a file

import pickle
my_list  = ['Fred', '73', 'Hello there', '81.9876e-13']
pickle_file = open('my_pickled_list.pkl', 'wb+')  #Python3中读写文件后要加b+，保证存储文件为二进制格式
pickle.dump(my_list, pickle_file)
pickle_file.close()
