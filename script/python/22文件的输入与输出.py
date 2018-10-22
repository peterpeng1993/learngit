# -*- coding: utf-8 -*-
"""
Created on Wed Apr 18 16:37:23 2018
"""
my_file=open('note.txt','r')#读文件
lines=my_file.readlines()
print(lines)
my_file.close()#关闭文件

my_file=open('note.txt','r')
first_line=my_file.readline()#一次只读一行
second_line=my_file.readline()
print(first_line)
print(second_line)
my_file.seek(0)#重新搜索
first_line_again=my_file.readline()
print(first_line_again)
my_file.close()

f=open('splat.wav','rb')#读取二进制文件
print(f.readline())


todo_list=open('note.txt','a')#添加内容
todo_list.write('\nSpend allowance')
todo_list.close()
my_file=open('note.txt','r')
lines=my_file.readlines()
print(lines)
my_file.close()

new_file=open('new_note.txt','w')#写文件
new_file.write('Eat supper\n')
new_file.write('Play soccer\n')
new_file.write('Go to bed\n')
new_file.close()

my_file=open('note.txt','w')#重新写入文件
print('\nPlay soccer',file=my_file)#利用print写入文件,与python2.x不同
my_file.close()

import pickle#使用pickle(class)将列表储存到文件中
my_list=['A','BOY','C','131452013145201314520']
pickle_file=open('my_pickled_list.pkl','wb')#在python3中pickle写入的都是二进制代码
pickle.dump(my_list,pickle_file)
pickle_file.close()


pickle_file=open('my_pickled_list.pkl','rb')#读取时也应该以二进制读取
recovered_list=pickle.load(pickle_file)
pickle_file.close()
print(recovered_list)
#import pickle#有关pickle的解释
#help(pickle)
