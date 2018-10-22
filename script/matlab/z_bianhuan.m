clear all;
close all;
ts=0.1;
num1=8;
den1=[0.16,0.2,15];
sys=tf(num1,den1);
dsys=c2d(sys,ts,'zoh');
[num,den]=tfdata(dsys,'v');
num,
den,

