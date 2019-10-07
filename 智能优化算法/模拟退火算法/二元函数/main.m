%%main.m
T=1000; %初始化温度值
T_min=1e-12; %设置温度下界
alpha=0.98; %温度的下降率
k=1000; %迭代次数（解空间的大小）
down1=-1;
up1=1;
down2=-1;
up2=3;
x=getX(down1,up1,down2,up2); %随机得到初始解
while(T>T_min)
    for I=1:1000%一种温度下要重复实验100次
        fx=Fx(x);
        x_new=x+0.2*(2*rand(1,2)-1);%这一步执行的是在初始解的临近子集中随机选择一个新解，+(2*rand-1)
        if x_new(1)<down1||x_new(1)>up1||x_new(2)<down2||x_new(2)>up2
            continue;
        end
        if(x(1)>=down1 && x(1)<=up1&&x(2)>=down2&&x(2)<=up2)
            fx_new=Fx(x_new);
            delta=fx_new-fx;
            if (delta<0)
                x=x_new;
            else
                P=getP(delta,T); %以概率决定是否接受新解，为了跳出局部最优解
                if(P>rand)
                    x=x_new;
                end
            end
        end
    end
    T=T*alpha;
end
disp('最优解为：')
disp(x)
disp('Y:')
display(Fx(x))