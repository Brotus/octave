function [ci, xi] =compute_newton_poly(xi,yi)
% Eingabe:    x...Stutzstellen [x0,x1,...,xn]
%             y...Stutzwerte [y0,y1,...,yn]
% Ausgabe:    c...Koeffizienten [c0,c1,...,cn]
% Indizierung: x(1)=x0, x(2)=x1, usw

m=length(xi); % m=n+1
xi = xi;
ci=yi;
for i=1:m-1
for j=m:-1:i+1
ci(j)=(ci(j)-ci(j-1))/(xi(j)-xi(j-i));
end
end