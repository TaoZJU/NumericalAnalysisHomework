%P74_2_2.m

format long;
X = [0.25,0.30,0.39,0.45,0.53];             % X表示自变量的取值
Y = [0.5000,0.5477,0.6245,0.6708,0.7280];   % Y表示因变量的取值
n = length(X);                              % 计算X的维度
disp('插值矩阵信息如下：');
M = csape(X,[0,Y,0],[2 2])        % 计算f'(0.25)=1.0000,f'(0.53)=0.6868时的插值矩阵
%--------------------------一点说明--------------------------%
% 如果X = [x1 x2 x3 x4]
% 那么M.breaks也为[x1 x2 x3 x4]
% 计M.coefs的第i行分量为[ci1 ci2 ci3 ci4]         
% 那么在[x1 x2]上关于x的插值多项式
% 就为c11*(x-x1)^3+c12*(x-x1)^2+c13*(x-x1)^1+c14*(x-x1)^0
% 在[x2 x3]上关于x的插值多项式
% 就为c21*(x-x1)^3+c22*(x-x1)^2+c23*(x-x1)^1+c24*(x-x1)^0
% 以此类推
%--------------------------一点说明--------------------------%
C = M.coefs;                                % 导出系数矩阵
B = M.breaks;                               % 导出端点矩阵
syms x;                                     % 为实现多项式计算引入的变量x
S = zeros(n-1,n-1);                         % 创建(n-1)行(n-1)列的S

%计算系数矩阵
for i = 1:n-1
    S(i,:) = sym2poly(C(i,1)*(x-B(i))^3+C(i,2)*(x-B(i))^2+C(i,3)*(x-B(i))+C(i,4));
end
disp('插值多项式系数矩阵如下：');
S

% 作出三次样条插值图像
for i = 1:n-1
    xx = linspace(X(i),X(i+1),100);
    yy = polyval(S(i,:),xx);
    H1=plot(xx,yy);
    set(H1,'Linestyle','-','color','b','Linewidth',1.5);
    hold on;
end
H2=plot(X,Y);
set(H2,'Linestyle','o','color','m','Linewidth',1.5);
xlabel('X');
ylabel('Y');