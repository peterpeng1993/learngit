syms x
area2=int(x.^2,0,3)+int(12-x,3,12);
area2=vpa(area2,3) %将分数转化为小数
x=0:0.1:12;
y1=x.^2;
y2=12-x;
plot(x,y1,x,y2);
xlabel('x');ylabel('y');
legend('y1=x^2','y2=12-x');
title('求曲边三角形面积');
axis([0 15 0 15]);
text(3,9,'交点');
grid on
x=unifrnd(0,12,[1,10000000]);
y=unifrnd(0,9,[1,10000000]);
frequency=sum(y<x.^2 & x<=3)+sum(y<12-x & x>=3);
area1=12*9*frequency/10^7
delta=area2-area1
