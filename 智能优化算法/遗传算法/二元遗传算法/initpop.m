% 2.1初始化(编码)
%下面开始对这个函数进行改造
% initpop.m函数的功能是实现群体的初始化，popsize表示群体的大小，chromlength表示染色体的长度(二值数的长度)，
% 长度大小取决于变量的二进制编码的长度(在本例中取10位)。
%初始化
function [pop,a,b]=initpop(popsize,down1,up1,down2,up2,jingdu) 
qujian1=up1-down1;
qujian2=up2-down2;
length1=0;
length2=0;%这个对应遗传算法的两个性状
while(qujian1/(2^length1-1)>jingdu)
    length1=length1+1;
end
while(qujian2/(2^length2-1)>jingdu)
    length2=length2+1;
end
pop=round(rand(popsize,length1+length2)); 
a=length1;
b=length2;
end
% rand随机产生每个单元为 {0,1} 行数为popsize，列数为chromlength的矩阵，

% round对矩阵的每个单元进行圆整四舍五入。这样产生的初始种群。
