% Uros Bojanic 2019/0077
clear all
clc
close all

vreme = [0 25];
Sp = 1e6; Ip = 100; Rp = 0;
yp = [Sp Ip Rp];
alpha = 2.65e-6;
beta = 1;
options = odeset;
[t,y] = ode45(@SIR,vreme,yp,options,alpha,beta);

figure(1)
plot(t,y(:,1),'b',t,y(:,2),'r',t,y(:,3),'g')
xlabel('t (nedelja)')
ylabel('Broj jedinki')
legend('S(t)','I(t)','R(t)')

% vrednost i položaj maksimuma zaraženih
[max_I,ind_I] = max(y(:,2));
vreme_max_I = t(ind_I);
max_I % vrednost maksimuma
vreme_max_I % položaj maksimuma

% trenutak kada je R=0.5%
tren = y(:,2)<=(0.005*1e6);
for i=1 : max(size(tren))
    if tren(i) == 1
        tren(i) = 0;
    else
        break;
    end
end

idt = find(tren~=0, 1, 'first')*max(t)/max(size(t))
