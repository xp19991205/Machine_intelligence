% 2.2.3 计算目标函数值
% calobjvalue.m函数的功能是实现目标函数的计算，其公式采用本文示例仿真，可根据不同优化问题予以修改。
%遗传算法子程序
%Name: calobjvalue.m
%实现目标函数的计算，将 二值域 中的数转化为 变量域的数
%此函数已改造
function [objvalue]=calobjvalue(pop,length1,length2,down1,down2)
temp1=decodechrom(pop,1,length1);   %将pop每行中的x1转化成十进制数
temp2=decodechrom(pop,length1+1,length2);
x1=down1+temp1*10./(2^length1-1);
x2=down2+temp2*10./(2^length2-1);
objvalue=x1.^2+x2.^2;   %计算目标函数值
