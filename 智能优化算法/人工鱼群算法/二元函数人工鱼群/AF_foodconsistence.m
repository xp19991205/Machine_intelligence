function [Y]=AF_foodconsistence(X)
fishnum=size(X,2);
for i=1:fishnum
     Y(1,i)=sin(X(1)*X(2));%Ŀ�꺯��Z=X^2+2*Y^2
end