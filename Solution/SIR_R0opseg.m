% Uros Bojanic 2019/0077
clear all
clc
close all

Sp = 1e6; Ip = 100; Rp = 0;
yp = [Sp Ip Rp];

% R0 > 1
vreme = [0 25];
alpha = 2.65e-6;
beta = 1;
options = odeset;
[t,y] = ode45(@SIR,vreme,yp,options,alpha,beta);
figure(1)
plot(t,y(:,1),'b',t,y(:,2),'r',t,y(:,3),'g')
xlabel('t (nedelja)')
ylabel('Broj jedinki')
legend('S(t)','I(t)','R(t)')
title('R=2.65')

% R0 = 1
vreme = [0 1000];
alpha = 1e-6;
beta = 1;
options = odeset;
[t,y] = ode45(@SIR,vreme,yp,options,alpha,beta);
figure(2)
plot(t,y(:,1),'b',t,y(:,2),'r',t,y(:,3),'g')
xlabel('t (nedelja)')
ylabel('Broj jedinki')
legend('S(t)','I(t)','R(t)')
title('R=1')

% R0 < 1
vreme = [0 10];
alpha = 0.1e-6;
beta = 1;
options = odeset;
[t,y] = ode45(@SIR,vreme,yp,options,alpha,beta);
figure(3)
plot(t,y(:,1),'b',t,y(:,2),'r',t,y(:,3),'g')
xlabel('t (nedelja)')
ylabel('Broj jedinki')
legend('S(t)','I(t)','R(t)')
title('R=0.1')