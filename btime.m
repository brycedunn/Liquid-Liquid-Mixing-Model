function [ h ] = btime( x,y )
%Yep, it'll solve your blending time from logvar
[q,w] = logvart(x,y);
coeffs = polyfit(q, w, 1);
fittedX = linspace(min(q), max(q), 200);
fittedY = polyval(coeffs, fittedX);
h = ((-6)-coeffs(2))/coeffs(1);
end

