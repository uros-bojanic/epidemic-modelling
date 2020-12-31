% Uros Bojanic 2019/0077
function dydt = SEIR(t,y,alpha,beta,delta)
dydt = zeros(4,1);
S = y(1); E = y(2); I = y(3); R = y(4);
dydt(1) = -alpha*S*I;
dydt(2) = alpha*S*I - delta*E;
dydt(3) = delta*E - beta*I;
dydt(4) = beta*I; 