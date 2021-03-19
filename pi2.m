function pi_2 = pi2(P1,w)
t1 = 0.1;
t2 = 0.2;
% w = 0.2;
beta1 = 2.0;
beta2 = 0.4;

pi_2 = (beta2* (beta1*P1 - beta1*w -P1+w))/( 2*beta1^2 * (2*beta2 - t2^2) );