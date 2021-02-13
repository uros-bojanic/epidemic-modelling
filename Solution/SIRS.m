% Uros Bojanic 2019/0077
function dydt = SIRS(t,y,alpha,beta,gamma)
dydt = zeros(3,1);
S = y(1); I = y(2); R = y(3);
dydt(1) = -alpha*S*I + gamma*R;
dydt(2) = alpha*S*I - beta*I;
dydt(3) = beta*I - gamma*R;