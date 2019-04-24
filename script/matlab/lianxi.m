% clc,
% clear;
% t=0:200;
% T=100;
% N=20;
% y=0;
% for n=1:N
%     Bm=20*rand(1);
%     y=Bm*sin(2*pi*t*n/T)+y;
% end
% % y=y+wgn(1,201,20);

% plot(t,y,'r')

% z(1)=0;
% for i=1:10;
%     z(i+1)=z(i)+2;
% end
% a=z(i+1)
% b=z

% Kalman滤波技术
phi=1;                                         % 状态转移矩阵 Φ(k)
H=0.2;                                         % 观测矩阵 H(k)
X(1)=0;                                        % 目标的状态向量 X(k)
V(1)=0;                                        % 过程噪声 V(k)
Y(1)=1;                                        % 一步预测x(k)的更新 X(k+1|k+1)
P(1)=10;                                       % 一步预测的协方差 P(k)
N=200;
V=randn(1,N);                               % 模拟产生过程噪声(高斯分布的随机噪声)
w=randn(1,N);                               % 模拟产生测量噪声
for k=2:N
    X(k) = phi * X(k-1)+V(k-1);           % 状态方程:X(k+1)=Φ(k)X(k)+G(k)V(k),其中G(k)=1
end
Q=std(V)^2;                                  % W(k)的协方差,std()函数用于计算标准偏差  
R=std(w)^2;                                  % V(k)的协方差 covariance
Z=H*X+w;                                     % 观测方程:Z(k+1)=H(k+1)X(k+1)+W(k+1),Z(k+1)是k+1时刻的观测值
for t=2:N
    P(t) = phi * P(t-1)+Q;                    % 一步预测的协方差 P(k+1|k)   
    S(t) = H.^2 * P(t)+R;                   % 观测向量的预测误差协方差 S(k+1)
    K(t) = H * P(t)/S(t);                      % 卡尔曼滤波器增益 K(k+1) 
    v(t) = Z(t) - ( phi * H * Y(t-1) );        % 新息/量测残差 v(k+1)
    Y(t)=phi * Y(t-1) + K(t) * v(t);          % 状态更新方程 X(k+1|k+1)=X(k+1|k)+K(k+1)*v(k+1)
    P(t)=(1-H * K(t)) * P(t);                 % 误差协方差的更新方程: P(k+1|k+1)=(I-K(k+1)*H(k+1))*P(k+1|k)
end
t=1:N;
plot(t,Y,'r',t,Z,'g',t,X,'b');                       % 红色线最优化估算结果滤波后的值，%绿色线观测值，蓝色线预测值
legend('Kalman滤波结果','观测值','预测值');