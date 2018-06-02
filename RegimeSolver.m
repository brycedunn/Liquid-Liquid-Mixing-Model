syms N
D = 0.864;
rho = 1000;
u = 1;
Po = 0.32;

eqn = (Po^(1/3))*((D^2)*N*rho)/u == 186;
r1 = solve(eqn,N);
r1 = double(r1)*60

eqn = (Po^(1/3))*((D^2)*N*rho)/u == 6000;
r2 = solve(eqn,N);
r2 = double(r2)*60
