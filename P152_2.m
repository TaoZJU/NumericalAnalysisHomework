%152_2.m
clear;clc;format rat;

%�������A���Ҷ�����b
n = ceil(10*rand(1));
P = 100*rand(n,n);
while (det(P)==0)
   P = rand(n,n); 
end
A = P'*P;
b = rand(n,1);

%�Ľ���ƽ��������
x = SquareImproved(A,b);
disp(x);