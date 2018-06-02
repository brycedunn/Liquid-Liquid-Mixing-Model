rpm = 0:1:1000;
times = (rpm.^(-1.786)).*414416;
%times = (rpm.^(-0.726)).*1114.2;
power = ((0.32*1000.*(rpm./60).^3.*0.864^5))./(1000*0.8);
cost = power.*times.*(0.12/60);
plot(rpm,cost)