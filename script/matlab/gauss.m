function y=gauss(x,ex,dx);
y=(1/(dx*sqrt(2*pi)))*exp(-(x-ex).^2/2*dx.^2);
end
% matlab���Դ���̬�ֲ�����
% x=-5:0.1:5;
% y=normpdf(x,0,1)��
% plot(x,y);
% matlab�����ɸ�˹����ֲ���
% x=-2:0.1:2;
% y=normrnd(0,0.05);
%x=wgn(m,n,p);����m*n����ֵΪp�ĸ�˹��������