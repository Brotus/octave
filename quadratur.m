function s = quadratur(f,a,b,t,w)
% f		function handle
% a,b	Intervallgrenzen [a,b]
% t,w	Stützstellen und Integrationsgewichte
% s		numerisches Integral
h=b-a;
s=0;
for i=1:length(w)
	s = s+w(i)*f(a+t(i)*h);
end
s=h*s;
end