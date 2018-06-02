function [ n ] = nrml(x)
%Yep, it'll normalize your data
if ~isvector(x)
    error('Input must be a vector')
end
x = x(x~=0);
l = length(x);
m = 1:l;
n = (x(m)-x(1))/(mean(x(floor(0.9*l):end))-x(1));
n = n(n~=1);
end

