clc
clear all
close all

%
W_vec = [3^(-0.5)   3^(-0.5)    3^(-0.5)];
W_mat = [0          -W_vec(3)   W_vec(2);
        W_vec(3)    0           -W_vec(1);
        -W_vec(2)   W_vec(1)    0       ];
%
zeta = 0 : pi / 180 : pi / 3;
%
origin_point = [0   0   0];
vector_x = [1   0   0];
vector_y = [0   1   0];
vector_z = [0   0   1];
% color
color_table = linspecer(length(zeta));
for i = 1 : length(zeta)
    %hold off
    plot3([origin_point(1) W_vec(1)],[origin_point(2) W_vec(2)],[origin_point(3) W_vec(3)], 'r--o', 'linewidth',2)
    hold on
    % 绘制原基向量
    plot3([origin_point(1) vector_x(1)],[origin_point(2) vector_x(2)],[origin_point(3) vector_x(3)], 'r')
    plot3([origin_point(1) vector_y(1)],[origin_point(2) vector_y(2)],[origin_point(3) vector_y(3)], 'r')
    plot3([origin_point(1) vector_z(1)],[origin_point(2) vector_z(2)],[origin_point(3) vector_z(3)], 'r')
    %
    Rot_mat = diag([1 1 1]) + sin(zeta(i)) * W_mat + (1 - cos(zeta(i))) * W_mat * W_mat;
    
    vector_x_Rot = vector_x * Rot_mat;
    vector_y_Rot = vector_y * Rot_mat;
    vector_z_Rot = vector_z * Rot_mat;

    % 绘制变换后的基向量
    plot3([origin_point(1) vector_x_Rot(1)],[origin_point(2) vector_x_Rot(2)],[origin_point(3) vector_x_Rot(3)], '-*','color', color_table(i, :))
    plot3([origin_point(1) vector_y_Rot(1)],[origin_point(2) vector_y_Rot(2)],[origin_point(3) vector_y_Rot(3)], '-*','color', color_table(i, :))
    plot3([origin_point(1) vector_z_Rot(1)],[origin_point(2) vector_z_Rot(2)],[origin_point(3) vector_z_Rot(3)], '-*','color', color_table(i, :))

    axis([-0.5 1 -0.5 1 -0.5 1])
    view(100, 30);
    drawnow()
    title(sprintf('θ = %.3f 度', zeta(i) * 180 / pi))
    grid on
    pause(0.05)
end
