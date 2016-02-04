function r = quadrature (f,a,b,ti,wi)
sum = 0;
for i=1:length(wi)
sum = sum + wi(i)*f(a+ti(i)*(b-a))
end
r=(b-a)*sum