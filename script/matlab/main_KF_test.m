addpath('./filters');
addpath('./IP_raytracing');
%% ģ��һ���˶��켣��Ȼ����ϸ�˹�۲���������Ϊ�۲�λ�ù켣��Ȼ��ʹ�ÿ������˲��õ��˲���Ľ����
% �ٶ�Ϊ��ֵ0.6m��׼��0.05�ĸ�˹�ֲ�
% �۲�������׼��Ϊ2

%% ����ʵ�ʵ���ʵ·��
roomLength = 1000;
roomWidth = 1000;
t = 500;
trace_real = get_random_trace(roomLength, roomWidth, t);
figure; 
subplot(1, 3, 1); plot(trace_real(:, 1), trace_real(:, 2), '.');
title('ʵ�ʵ���ʵ·��');

%% �й۲�����ʱ��·��
noise = 2; %2m��λ�ò�������
trace = trace_real + normrnd(0, noise, size(trace_real));
subplot(1, 3, 2); plot(trace(:, 1), trace(:, 2), '.');
title('������ʱ��·��');
fprintf('�������˲�֮ǰ�Ķ�λ���ȣ� %f m\n', accuracy(trace, trace_real));

%% ����������·�����п������˲�
kf_params_record = zeros(size(trace, 1), 4);
for i = 1 : t
    if i == 1
        kf_params = kf_init(trace(i, 1), trace(i, 2), 0, 0); % ��ʼ��
    else
        kf_params.z = trace(i, 1:2)'; %���õ�ǰʱ�̵Ĺ۲�λ��
        kf_params = kf_update(kf_params); % �������˲�
    end
    kf_params_record(i, :) = kf_params.x';
end
kf_trace = kf_params_record(:, 1:2);
subplot(1, 3, 3); plot(kf_trace(:, 1), kf_trace(:, 2), '.');
title('�������˲����Ч��');
fprintf('�������˲�֮��Ķ�λ���ȣ� %f m\n', accuracy(kf_trace, trace_real));
