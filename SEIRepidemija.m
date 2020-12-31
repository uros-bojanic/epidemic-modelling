% Uros Bojanic 2019/0077
clear all
clc
close all

vreme = [0 52];
Sp = 1e6; Ep = 0; Ip = 100; Rp = 0;
yp = [Sp Ep Ip Rp];
alpha = 2.65e-6;
beta = 1;

% delta = 0.3
delta = 0.3;
options = odeset;
[t,y] = ode45(@SEIR,vreme,yp,options,alpha,beta,delta);
figure(1)
plot(t,y(:,1),'b',t,y(:,2),'y',t,y(:,3),'r',t,y(:,4),'g')
xlabel('t (nedelja)')
ylabel('Broj jedinki')
legend('S(t)','E(t)','I(t)','R(t)')
title('delta=0.3')
tren = y(:,2)<=(0.005*Sp);
for i=1 : max(size(tren))
    if tren(i) == 1
        tren(i) = 0;
    else
        break;
    end
end
s_eq1 = y(find(tren~=0, 1, 'first'),1) / Sp  * 100


% delta = 0.5
delta = 0.5;
options = odeset;
[t,y] = ode45(@SEIR,vreme,yp,options,alpha,beta,delta);
figure(2)
plot(t,y(:,1),'b',t,y(:,2),'y',t,y(:,3),'r',t,y(:,4),'g')
xlabel('t (nedelja)')
ylabel('Broj jedinki')
legend('S(t)','E(t)','I(t)','R(t)')
title('delta=0.5')
tren = y(:,2)<=(0.005*Sp);
for i=1 : max(size(tren))
    if tren(i) == 1
        tren(i) = 0;
    else
        break;
    end
end
s_eq2 = y(find(tren~=0, 1, 'first'),1) / Sp  * 100


% delta = 1
delta = 1;
options = odeset;
[t,y] = ode45(@SEIR,vreme,yp,options,alpha,beta,delta);
figure(3)
plot(t,y(:,1),'b',t,y(:,2),'y',t,y(:,3),'r',t,y(:,4),'g')
xlabel('t (nedelja)')
ylabel('Broj jedinki')
legend('S(t)','E(t)','I(t)','R(t)')
title('delta=1')
tren = y(:,2)<=(0.005*Sp);
for i=1 : max(size(tren))
    if tren(i) == 1
        tren(i) = 0;
    else
        break;
    end
end
s_eq3 = y(find(tren~=0, 1, 'first'),1) / Sp  * 100