function prediction = loc_knn_reg(data, labels, test_data, k)
%����knn�Ķ�λ���ع飨lable������x��y��������ֵ�͵ģ����Խ�����ֵ����ȡk����ƽ����
    if nargin == 3
        k = 40;
    end
    %���ݶ�λ����õķ�������knn���������k��labelȡƽ������Щϸ�ڿ��������������ﲢû��ʹ��matlab����knn������
    distance = sqrt(sum((data - repmat(test_data, size(data, 1), 1)).^2, 2));
    [~, idx] = sort(distance);
    prediction = mean(labels(idx(1:k), :));
end

