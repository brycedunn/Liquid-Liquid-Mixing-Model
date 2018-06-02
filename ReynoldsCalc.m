rpm = 0:1:300;
N = rpm ./ 60;
D = 0.864;
rho = 1000;
u = 1;
Po = 0.32;

Re = ((D^2).*N.*rho)./u;

r = (Po^(1/3)).*Re;

plot(rpm,r)