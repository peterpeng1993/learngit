# -*- coding: utf-8 -*-
'''
Created on Wed Apr 18 10:16:15 2018
'''
print('ABCDEFGH\tMN')  #制表符


print('Hello',end=' ') #不换行
print('world')


print('hi\\how are you') #打印反斜杠


print('Number\tSquare\tCube')
for i in range (1,11):
    print(i,'\t',i**2,'\t',i**3)#制表


name='Peter'
print('my name is',name,end='.''\n')#不换行与换行
print('my name is %s and I wrote this book'%name)
#插入字符串


dec_number=3.541592653589793
print('pie=%.4f'%dec_number,'p=%i'%dec_number)
#小数四舍五入截断，整数直接截断
print('%e'%dec_number)#科学计数法
number=12313241
print('%g'%number)


math=88.4
science=90.5
print('I got %g in math and %g in science'%(math,science))
print('I got {0:.1f} in math,{1:.1f} in science'.format(math,science))#多个格式化字符串


my_string='%.2f'%12.3456
print('the answer is',my_string)


name_string='Sam,Brad,Alex,Cameron,Toby,Gwen,Jenn,Connor'
names=name_string.split(',')#分解字符串
print(names)
for name in names:
    print(name)
parts=name_string.split(',Toby,')
print(parts)
for part in parts:
    print(part)
 
    
word_list=['my','name','is','Peter']
long_string=' A '.join(word_list)#拼接字符串，在join前面插入字符
print(long_string)


name='Frankenstein'#从开头或结尾搜索字符串
print(name.startswith('F'))
print(name.startswith('Frank'))
print(name.startswith('Flop'))
print(name.endswith('n'))
print(name.endswith('stein'))
print(name.endswith('stone'))


addr1='657 Maple Lane'#在字符串中搜素
addr2='47 Birch Street'
addr3='95 Maple Drive'
if 'Maple' in addr1:
    print('Found It!')
    print("That address has 'Maple' in it.")
    position=addr1.index('Maple')
    print("found 'Maple' at index",position)
 
    
name='Warren Sande  1'#删除末尾字符
short_name=name.strip('1')
print(short_name)


string1='Hello'#改变大小写
string2=string1.lower()
string3=string2.upper()
print(string2)
print(string3)

    