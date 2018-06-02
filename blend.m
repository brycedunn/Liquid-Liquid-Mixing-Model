function [avg,st] = blend( c1,c2,c3 )
%averages all the blending times, standard deviations
d1 = [0.5:1:(length(c1)-0.5)]';
a1 = btime(d1,c1);
a2 = btime(d1,c2);
a3 = btime(d1,c3);
b = [a1 a2 a3];
avg = mean(b);
st = std(b);
end

