% Uros Bojanic 2019/0077
clear all
clc
close all

vreme = [0 15];
Sp = 1e6; Ip = 100; Rp = 0;
yp = [Sp Ip Rp];

% R0 = 3
alpha = 3e-6;
beta = 1;
options = odeset;
[t,y] = ode45(@SIR,vreme,yp,options,alpha,beta);
figure(1)
plot(t,y(:,1),'b',t,y(:,2),'r',t,y(:,3),'g')
xlabel('t (nedelja)')
ylabel('Broj jedinki')
legend('S(t)','I(t)','R(t)')
title('Influenza (R0 = 3)')
[max_I1,ind_I1] = max(y(:,2));
max_I1 % vrednost maksimuma


% R0 = 6
alpha = 6e-6;
beta = 1;
options = odeset;
[t,y] = ode45(@SIR,vreme,yp,options,alpha,beta);
figure(2)
plot(t,y(:,1),'b',t,y(:,2),'r',t,y(:,3),'g')
xlabel('t (nedelja)')
ylabel('Broj jedinki')
legend('S(t)','I(t)','R(t)')
title('Polio (R0 = 6)')
[max_I2,ind_I2] = max(y(:,2));
max_I2 % vrednost maksimuma


% R0 = 15
alpha = 15e-6;
beta = 1;
options = odeset;
[t,y] = ode45(@SIR,vreme,yp,options,alpha,beta);
figure(3)
plot(t,y(:,1),'b',t,y(:,2),'r',t,y(:,3),'g')
xlabel('t (nedelja)')
ylabel('Broj jedinki')
legend('S(t)','I(t)','R(t)')
title('Rubeola (R0 = 15)')
[max_I3,ind_I3] = max(y(:,2));
max_I3 % vrednost maksimuma