%%main.m
T=1000; %��ʼ���¶�ֵ
T_min=1e-12; %�����¶��½�
alpha=0.98; %�¶ȵ��½���
k=1000; %������������ռ�Ĵ�С��
 
x=getX; %����õ���ʼ��
while(T>T_min)
    for I=1:100%һ���¶���Ҫ�ظ�ʵ��100��
        fx=Fx(x);
        x_new=x+(2*rand-1);%��һ��ִ�е����ڳ�ʼ����ٽ��Ӽ������ѡ��һ���½⣬+(2*rand-1)
        if(x_new>=-2 && x_new<=2)
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