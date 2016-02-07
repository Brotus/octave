function r = quadrature (f,a,b,ti,wi)
r= 0;
for i=1:length(wi);
r = r + wi(i)*f(a+ti(i)*(b-a));
end
r=(b-a)*r