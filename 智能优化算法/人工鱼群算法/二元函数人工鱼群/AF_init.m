function X=AF_init(Nfish,lb_ub)%lb_ub��һά���������½磬�ڶ�ά���������Ͻ磬����ά�м�����Ⱥ������ȡ1
X=[];
lb=lb_ub(1,:);
ub=lb_ub(2,:);
X(end+1,:)=lb(1)+(ub(1)-lb(1))*rand(1,Nfish);%������Ŀ��ռ��н�����������˹����?
X(end+1,:)=lb(2)+(ub(2)-lb(2))*rand(1,Nfish);   
end