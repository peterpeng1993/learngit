function acc = accuracy( predictions, labels )
%���㶨λ���
%labels��ʵ�ʵ�λ�ù켣��predictions�ǹ��Ƶ�λ�ù켣
    acc = mean(sqrt(sum((predictions - labels).^2, 2)));
end