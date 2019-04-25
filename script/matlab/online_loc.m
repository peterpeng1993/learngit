function predictions = online_loc(offline_rss, offline_location, online_rss, type)
%ģ�����߶�λ
%offline_location��offline_rss������ָ�ƿ⣬ÿ��Ϊһ��ָ��
%online_rssΪ����RSS��ÿ��Ϊһ��RSS����

    predictions = zeros(size(online_rss, 1), size(offline_location, 2));
    disp(type);
    if type == 'knn_reg'  %���õ�knn��λ
        tic;
        lasttime = 0;
        for i = 1:size(online_rss, 1) %�ֱ��ÿ��RSS�������ж�λ
            curtime = toc;
            if curtime - lasttime > 1
                fprintf('���ȣ�%f%%\n', i / size(online_rss, 1) * 100);
                lasttime = curtime;
            end
            % knn�ع�
            prediction = loc_knn_reg(offline_rss, offline_location, online_rss(i, :));
            predictions(i, :) = prediction;
        end
    end

    % knn������(label���������֣���Ϊ����ı�ţ�����Ϊ��ֵ��)
    if type == 'knn_cls'
        k = 40;
        predictions = loc_knn_cls(offline_rss, offline_location, online_rss, k);
    end
end