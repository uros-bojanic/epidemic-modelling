% Uros Bojanic 2019/0077
function dydt = ISIR(t,y,alpha0,k,beta)
dydt = zeros(3,1);
S = y(1); I = y(2); R = y(3);
dydt(1) = -alpha0/(1+k*I)*S*I;
dydt(2) = alpha0/(1+k*I)*S*I - beta*I;
dydt(3) = beta*I;