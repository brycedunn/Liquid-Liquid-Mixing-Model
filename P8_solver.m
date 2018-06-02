[a1,b1]=blend(c1s1,c2s1,c3s1);
[a2,b2]=blend(c1s2,c2s2,c3s2);
[a3,b3]=blend(c1s3,c2s3,c3s3);
[a4,b4]=blend(c1s4,c2s4,c3s4);
[a5,b5]=blend(c1s5,c2s5,c3s5);
[a6,b6]=blend(c1s6,c2s6,c3s6);
[a7,b7]=blend(c1s7,c2s7,c3s7);
[a8,b8]=blend(c1s8,c2s8,c3s8);
[a9,b9]=blend(c1s9,c2s9,c3s9);
as = [a1 a2 a3 a4 a5 a6 a7 a8 a9];
er = [b1 b2 b3 b4 b5 b6 b7 b8 b9];
sp = [100:50:500];
xx = 100:1:500;
yy = spline(sp,as,xx);
%plot(sp,as,'o',xx,yy)
errorbar(sp,as,er,'bx')
title('Blending Time vs Agitation Speed in P8')
xlabel('Agitation Speed (RPM)')
ylabel('Blending Time (s)')

