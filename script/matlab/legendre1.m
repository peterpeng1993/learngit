clear
clc
x=0:0.01:1;
y1=legendre(1,x);
plot(x,y1(1,:))
hold on;
title('勒让德多项式')
pause(1)
y2=legendre(2,x);
plot(x,y2(1,:))
hold on;
pause(1)
y3=legendre(3,x);
plot(x,y3(1,:))
hold on;
pause(1)
y4=legendre(4,x);
plot(x,y4(1,:))
hold on;
pause(1)
y5=legendre(5,x);
plot(x,y5(1,:))
hold on;
pause(1)
y6=legendre(6,x);
plot(x,y6(1,:))
