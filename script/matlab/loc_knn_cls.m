function [predictions, model] = loc_knn_cls(data, labels, test_data, k)
    % knn������(label���������֣�����Ϊ��ֵ��)
    labels = round(labels(:, 1)/100)*100 + round(labels(:, 2)/100); %������xyת����һ��label
    model = ClassificationKNN.fit(data, labels, 'NumNeighbors', k);
    label_predict = predict(model, test_data);
    predictions = [floor(label_predict/100), label_predict - floor(label_predict/100) * 100]; %��Ԥ�������labelת��Ϊ����xy
    predictions = predictions * 100;
end