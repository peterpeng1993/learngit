x = 0:pi/100:2*pi;   %比例尺细化作图
y = sin(x);
plot(x,y)
hold on
y2 = sin(x-.25);
y3 = sin(x-.5);
plot(x,y,x,y2,x,y3)
xlabel('x = 0:2\pi') %添加比例尺
ylabel('Sine of x')
title('Plot of the Sine Function','FontSize',12)   %字号大小
hold off