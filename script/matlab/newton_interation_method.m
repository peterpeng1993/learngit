clear
clc
x=6;                              %迭代初值
i=0;                                %迭代次数计算
x1=-2:0.1:11;                %x=linspace(m,n,q),将[m,n]分为q段
y1=f(x1);
plot(x1,y1(1,:));
hold on;                               %保存图像
while i<= 15                         %迭代次数限制
    x0=x-f(x)/h(x);                      %牛顿迭代格式
    y0=f(x0);
    fprintf('\n%s%.4f\t%s%d','M(i)=',x0,'N(i)=',y0);
    plot(x0,y0,'-x');
    pause(1)
    yi=f(x0)+h(x0)*(x1-x0);         %求切线
    plot(x1,yi);                           %作出切线
    pause(2);
    if abs(x-x0)>0.01                 %收敛判断
        x=x0;
    else
    break
end
i=i+1;
end
fprintf('\n%s%.4f\t%s%d','X=',x,'i=',i);%输出结果