function r = aux_newton_monom (i, x)
% gives a matrix with 
sum = 0;
if (length(x) == i)
r = x;
elseif (i == 0)
r = 1;
else
r= 0;
  r=x(k)*aux_newton_monom(i-1, x(2:length(x)));
end