function X=AF_init(Nfish,lb_ub)%lb_ub第一维代表搜索下界，第二维代表搜索上界，第三维有几个鱼群，这里取1
X=[];
lb=lb_ub(1,:);
ub=lb_ub(2,:);
X(end+1,:)=lb(1)+(ub(1)-lb(1))*rand(1,Nfish);%这是在目标空间中进行随机生成人工随机?
X(end+1,:)=lb(2)+(ub(2)-lb(2))*rand(1,Nfish);   
end