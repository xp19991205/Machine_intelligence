function X=AF_init(Nfish,lb_ub)%lb_ub��һά���������½磬�ڶ�ά���������Ͻ磬����ά�м�����Ⱥ������ȡ1
row=size(lb_ub,1);
X=[];
for i=1:row
    lb=lb_ub(i,1);
    ub=lb_ub(i,2);
    nr=lb_ub(i,3);
    for j=1:nr
        X(end+1,:)=lb+(ub-lb)*rand(1,Nfish);%������Ŀ��ռ��н�����������˹����?
    end
end