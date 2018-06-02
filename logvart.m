function [ x1,f ] = logvart( x,y )
%Yep, it'll normalize your data and log-var it. and append the time vector too
x1 = x;
j = nrml(y);
m = [1:length(j)];
f = log(((j(m))-1).^2);
x1(length(j)+1:end) = [];
end

