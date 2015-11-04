function S = arctanfunc(x,tol)
%  abs(


y = x^2;
b = x;
s = x;

b = -x*y;
a = b/3;
s= x + a;

n=1;
while abs (a/(1-y))	 > tol
b = -b*y;
a = b/(2*n +3);
s = s + a;
endwhile
S = s;
endfunction 
