%lagrange_interpolation.m
% ʵ���������ղ�ֵ����
% X��ʾ�Ա�������Ӧ����
% Y��ʾ���������Ӧ����
function fp=lagrange_interpolation(X,Y)
% ��������
format long;	% ����������ʾλ��
n = length(X);  % ��ȡ��������
syms x;         % Ϊʵ�ֶ���ʽ��������ı���
l = 1;			% ����L(x)ʱʹ�õ��м����
L = 0;			% �������ղ�ֵ����ʽL(x)

for i = 1:n
    for j = 1:i-1
        l = l * (x-X(j))/(X(i)-X(j));
    end
    for j = i+1:n 
        l = l * (x-X(j))/(X(i)-X(j));
    end 
    L = L + l * Y(i);
    l = 1;
end

% ���ؽ��
% ��L(x)չ���ɶ���ʽϵ������
% ��: (x+1)*(x-2)*x+3 �ļ�����Ϊ
%     [1, -1, -2, 3]
fp = sym2poly(L);