% 2.1��ʼ��(����)
%���濪ʼ������������и���
% initpop.m�����Ĺ�����ʵ��Ⱥ��ĳ�ʼ����popsize��ʾȺ��Ĵ�С��chromlength��ʾȾɫ��ĳ���(��ֵ���ĳ���)��
% ���ȴ�Сȡ���ڱ����Ķ����Ʊ���ĳ���(�ڱ�����ȡ10λ)��
%��ʼ��
function [pop,a,b]=initpop(popsize,down1,up1,down2,up2,jingdu) 
qujian1=up1-down1;
qujian2=up2-down2;
length1=0;
length2=0;%�����Ӧ�Ŵ��㷨��������״
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
% rand�������ÿ����ԪΪ {0,1} ����Ϊpopsize������Ϊchromlength�ľ���

% round�Ծ����ÿ����Ԫ����Բ���������롣���������ĳ�ʼ��Ⱥ��
