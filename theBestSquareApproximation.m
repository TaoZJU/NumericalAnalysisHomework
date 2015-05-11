%theBestSquareApproximation.m
%���n��ƽ���ƽ�����
%����ֵBΪ��������Ӧϵ��
%����ֵPΪ���ƽ������ʽ
function [B,P] = theBestSquareApproximation(f,phi,rho,interval)
a = interval(1);
b = interval(2);
n = length(phi);
A = zeros(n);
C = zeros(n,1);
syms x;
for i = 1:n
    A(i,:) = int(eval(rho(i))*eval(phi(i))*eval(phi),a,b);
    eval(rho(i))*eval(phi(i))*eval(phi);
    C(i) = int(eval(rho(i))*eval(f)*eval(phi(i)),a,b);
end
B = (A\C)';
P = vpa(eval(sum(phi.*B)));