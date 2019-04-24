load('durer.mat')     %等价于load durer.mat，加载.mat格式文件名
imread('durer.mat') %等价于imread durer.png，加载图像格式文件名
load('durer.mat')     %加载文件中某个变量的数值
imshow(ans)          %将灰度矩阵转化为图像
imshow(Z,[-1,1])     %将Z中数值按照[-1，1]拉伸，转化为[0，256]的灰度图像           注：灰度图像中，0为黑色，255为白色
imshow(t,[0,8])       %将t中数值按照[0，8]拉伸，转化为[0，256]的灰度图像  
imshow(R,[0,10])    %将R中数值按照[0，10]拉伸，转化为[0，256]的灰度图像
imshow(R,[])          %
I=double(imread('durer.png'))
imshow(I,[ ])
imshow(I/256)       %将图像矩阵转化到0-1之间
imshow(uint8(I))    %按照256级灰度显示I得绝对数据。0表示黑色，255表示白色，I中大于255的值强制为255。