% Uros Bojanic 2019/0077
clear all
clc
close all

vreme = [0 30];
Sp = 1e6; Ip = 100; Rp = 0;
yp = [Sp Ip Rp];
alpha0 = 2.65e-6;
beta = 1;

% k = 0.3e-5
k = 0.3e-5;
options = odeset;
[t,y] = ode45(@ISIR,vreme,yp,options,alpha0,k,beta);
figure(1)
plot(t,y(:,1),'b',t,y(:,2),'r',t,y(:,3),'g')
xlabel('t (nedelja)')
ylabel('Broj jedinki')
legend('S(t)','I(t)','R(t)')
title('k=0.3e-5')
tren = y(:,2)<=(0.005*Sp);
for i=1 : max(size(tren))
    if tren(i) == 1
        tren(i) = 0;
    else
        break;
    end
end
s_eq1 = y(find(tren~=0, 1, 'first'),1) / Sp  * 100


% k = 0.8e-5
k = 0.8e-5;
options = odeset;
[t,y] = ode45(@ISIR,vreme,yp,options,alpha0,k,beta);
figure(2)
plot(t,y(:,1),'b',t,y(:,2),'r',t,y(:,3),'g')
xlabel('t (nedelja)')
ylabel('Broj jedinki')
legend('S(t)','I(t)','R(t)')
title('k=0.8e-5')
tren = y(:,2)<=(0.005*Sp);
for i=1 : max(size(tren))
    if tren(i) == 1
        tren(i) = 0;
    else
        break;
    end
end
s_eq2 = y(find(tren~=0, 1, 'first'),1) / Sp  * 100


% k = 1.7e-5
k = 1.7e-5;
options = odeset;
[t,y] = ode45(@ISIR,vreme,yp,options,alpha0,k,beta);
figure(3)
plot(t,y(:,1),'b',t,y(:,2),'r',t,y(:,3),'g')
xlabel('t (nedelja)')
ylabel('Broj jedinki')
legend('S(t)','I(t)','R(t)')
title('k=1.7e-5')
tren = y(:,2)<=(0.005*Sp);
for i=1 : max(size(tren))
    if tren(i) == 1
        tren(i) = 0;
    else
        break;
    end
end
s_eq3 = y(find(tren~=0, 1, 'first'),1) / Sp  * 100