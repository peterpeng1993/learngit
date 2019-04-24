function y=gauss(x,ex,dx);
y=(1/(dx*sqrt(2*pi)))*exp(-(x-ex).^2/2*dx.^2);
end
% matlab中自带正态分布函数
% x=-5:0.1:5;
% y=normpdf(x,0,1)；
% plot(x,y);
% matlab中生成高斯随机分布数
% x=-2:0.1:2;
% y=normrnd(0,0.05);
%x=wgn(m,n,p);产生m*n，幅值为p的高斯白噪声。