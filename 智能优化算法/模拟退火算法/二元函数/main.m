%%main.m
T=1000; %��ʼ���¶�ֵ
T_min=1e-12; %�����¶��½�
alpha=0.98; %�¶ȵ��½���
k=1000; %������������ռ�Ĵ�С��
down1=-1;
up1=1;
down2=-1;
up2=3;
x=getX(down1,up1,down2,up2); %����õ���ʼ��
while(T>T_min)
    for I=1:1000%һ���¶���Ҫ�ظ�ʵ��100��
        fx=Fx(x);
        x_new=x+0.2*(2*rand(1,2)-1);%��һ��ִ�е����ڳ�ʼ����ٽ��Ӽ������ѡ��һ���½⣬+(2*rand-1)
        if x_new(1)<down1||x_new(1)>up1||x_new(2)<down2||x_new(2)>up2
            continue;
        end
        if(x(1)>=down1 && x(1)<=up1&&x(2)>=down2&&x(2)<=up2)
            fx_new=Fx(x_new);
            delta=fx_new-fx;
            if (delta<0)
                x=x_new;
            else
                P=getP(delta,T); %�Ը��ʾ����Ƿ�����½⣬Ϊ�������ֲ����Ž�
                if(P>rand)
                    x=x_new;
                end
            end
        end
    end
    T=T*alpha;
end
disp('���Ž�Ϊ��')
disp(x)
disp('Y:')
display(Fx(x))