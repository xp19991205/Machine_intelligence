function X=AF_init(Nfish,lb_ub)%lb_ub第一维代表搜索下界，第二维代表搜索上界，第三维有几个鱼群，这里取1
row=size(lb_ub,1);
X=[];
for i=1:row
    lb=lb_ub(i,1);
    ub=lb_ub(i,2);
    nr=lb_ub(i,3);
    for j=1:nr
        X(end+1,:)=lb+(ub-lb)*rand(1,Nfish);%这是在目标空间中进行随机生成人工随机?
    end
end