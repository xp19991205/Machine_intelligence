% 2.2.3 ����Ŀ�꺯��ֵ
% calobjvalue.m�����Ĺ�����ʵ��Ŀ�꺯���ļ��㣬�乫ʽ���ñ���ʾ�����棬�ɸ��ݲ�ͬ�Ż����������޸ġ�
%�Ŵ��㷨�ӳ���
%Name: calobjvalue.m
%ʵ��Ŀ�꺯���ļ��㣬�� ��ֵ�� �е���ת��Ϊ ���������
%�˺����Ѹ���
function [objvalue]=calobjvalue(pop,length1,length2,down1,down2)
temp1=decodechrom(pop,1,length1);   %��popÿ���е�x1ת����ʮ������
temp2=decodechrom(pop,length1+1,length2);
x1=down1+temp1*10./(2^length1-1);
x2=down2+temp2*10./(2^length2-1);
objvalue=x1.^2+x2.^2;   %����Ŀ�꺯��ֵ
