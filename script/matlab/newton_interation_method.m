clear
clc
x=6;                              %������ֵ
i=0;                                %������������
x1=-2:0.1:11;                %x=linspace(m,n,q),��[m,n]��Ϊq��
y1=f(x1);
plot(x1,y1(1,:));
hold on;                               %����ͼ��
while i<= 15                         %������������
    x0=x-f(x)/h(x);                      %ţ�ٵ�����ʽ
    y0=f(x0);
    fprintf('\n%s%.4f\t%s%d','M(i)=',x0,'N(i)=',y0);
    plot(x0,y0,'-x');
    pause(1)
    yi=f(x0)+h(x0)*(x1-x0);         %������
    plot(x1,yi);                           %��������
    pause(2);
    if abs(x-x0)>0.01                 %�����ж�
        x=x0;
    else
    break
end
i=i+1;
end
fprintf('\n%s%.4f\t%s%d','X=',x,'i=',i);%������