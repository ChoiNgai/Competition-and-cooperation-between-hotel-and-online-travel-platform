U1 = 0.25;
U2 = 0.4;
V = 0.3;
theta = 0.6;
t1 = 0.1;
t2 = 0.2;
P1 = 0.3;
% pi_1 = 0.2;
% pi_2 = 0.3;
w = 0.2;
beta1 = 2.0;
beta2 = 0.4;

% 1)
% e = (P2 * t2 - w * t2)/beta2

% 2)
S = (P1 - w) / beta1

% 3)
P2 = (beta1 * beta2 * P1 - beta2 * P1 + beta2 * w - beta1 * w * t2^2 + beta1 * beta2 * w)/(beta1* (2*beta2 - t2^2) )

e = t2* (beta1*P1 - P1 + w - beta1 * w)/( beta1 * (2*beta2 - t2^2) )

% 1
pi_1 = (-(t2^2 * P1^2 - t2^2 * w^2 - 2*beta1*t2^2*P1^2 -4*beta1*beta2*P1 + 2* beta1*beta2 * P1^2 + 2*beta1*beta2*w^2 + 2*beta1 * t2^2 *P1 + 2*t1*t2 * P1^2 + 2*beta1*t2^2*w*P1 - 2*beta1*t1*t2*P1^2 - 4*beta1*beta2*w*P1 - 2*t1*t2*w*P1 + 2*beta1*t1*t2*w*P1  ))/(2*beta1*(2*beta2-t2^2))

% 2
pi_2 = (beta2* (beta1*P1 - beta1*w -P1+w))/( 2*beta1^2 * (2*beta2 - t2^2) )


p1 = 0.2:0.002:0.4;
W = 0.1:0.002:0.3;
for i = 1:length(p1)
   for j = 1:length(W)
      pi_1(i,j) = pi1(p1(i),W(j)); 
   end
end
figure(1)
mesh(p1,W,pi_1)
xlabel("P_1")
ylabel("w")
zlabel("\pi_1")

for i = 1:length(p1)
   for j = 1:length(W)
      pi_2(i,j) = pi2(p1(i),W(j)); 
   end
end
figure(2)
mesh(p1,W,pi_2)
xlabel("P_1")
ylabel("w")
zlabel("\pi_2")


for i = 1:length(p1)
   for j = 1:length(W)
      P_2(i) = (beta1 * beta2 * p1(i) - beta2 * p1(i) + beta2 * w - beta1 * w * t2^2 + beta1 * beta2 * w)/(beta1* (2*beta2 - t2^2) );
      pi_2(i,j) = pi2(p1(i),W(j)); 
   end
end
figure(5)
mesh(P_2,W,pi_2)
xlabel("P_2")
ylabel("w")
zlabel("\pi_2")
figure(6)
plot(P_2,W,'linewidth',2)
xlabel("P_2")
ylabel("w")


figure(3)

X1 = [0.1506	0.3	0.2013	0.3506
0.1526	0.3	0.2053	0.3526
0.1563	0.3	0.2127	0.3563
0.1625	0.3	0.225	0.3625
];
t = [0.1 0.2 0.3 0.4];
hold on
plot(t,X1(:,1),'-o','linewidth',2)
plot(t,X1(:,2),'-o','linewidth',2)
plot(t,X1(:,3),'-o','linewidth',2)
plot(t,X1(:,4),'-o','linewidth',2)
xlabel("\tau_2")
ylabel("P_2")
title("\tau_2 - P_2")
h1 = legend("P1=0.3,w=0.1","P1=0.3,w=0.3","P1=0.5,w=0.1","P1=0.5,w=0.3",'location','SouthOutside','NumColumns',2)
set(h1,'Box','on')


figure(4)
X2 = [0.0127	0	0.0253	0.0127
0.0132	0	0.0263	0.0132
0.0141	0	0.0282	0.0141
0.0156	0	0.0313	0.0156];
t = [0.1 0.2 0.3 0.4];
hold on
plot(t,X2(:,1),'-o','linewidth',2)
plot(t,X2(:,2),'-o','linewidth',2)
plot(t,X2(:,3),'-o','linewidth',2)
plot(t,X2(:,4),'-o','linewidth',2)
xlabel("\tau_2")
ylabel("\pi_2")
title("\tau_2 - \pi_2")
h1 = legend("P1=0.3,w=0.1","P1=0.3,w=0.3","P1=0.5,w=0.1","P1=0.5,w=0.3",'location','SouthOutside','NumColumns',2)
set(h1,'Box','on')
