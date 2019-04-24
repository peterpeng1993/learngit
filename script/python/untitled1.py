# -*- coding: utf-8 -*-
"""
Created on Tue Mar 26 10:14:41 2019

@author: peter peng
"""
fi = open("天龙八部-网络版.txt", "r", encoding='utf-8')
fo = open("天龙八部-汉字统计.txt", "w", encoding='utf-8')
txt = fi.read()
d = {}
for c in txt:
    d[c] = d.get(c, 0) + 1
del d[' ']
del d['\n']
ls = []
for key in d:
    ls.append("{}:{}".format(key, d[key]))
fo.write(",".join(ls))
fi.close()
fo.close()

import jieba
fi = open("天龙八部-网络版.txt", "r", encoding='utf-8')
fo = open("天龙八部-词语统计.txt", "w", encoding='utf-8')
txt = fi.read()
words = jieba.lcut(txt)
d = {}
for w in words:
    d[w] = d.get(w, 0) + 1
del d[' ']
del d['\n']
ls = []
for key in d:
    ls.append("{}:{}".format(key, d[key]))
fo.write(",".join(ls))
fi.close()
fo.close()

