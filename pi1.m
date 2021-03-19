function pi_1 = pi1(P1,w)
t1 = 0.1;
t2 = 0.2;
% w = 0.2;
beta1 = 2.0;
beta2 = 0.4;

pi_1 = (-(t2^2 * P1^2 - t2^2 * w^2 - 2*beta1*t2^2*P1^2 -4*beta1*beta2*P1 + 2* beta1*beta2 * P1^2 + 2*beta1*beta2*w^2 + 2*beta1 * t2^2 *P1 + 2*t1*t2 * P1^2 + 2*beta1*t2^2*w*P1 - 2*beta1*t1*t2*P1^2 - 4*beta1*beta2*w*P1 - 2*t1*t2*w*P1 + 2*beta1*t1*t2*w*P1  ))/(2*beta1*(2*beta2-t2^2));