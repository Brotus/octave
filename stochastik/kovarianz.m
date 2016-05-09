
function s = kovarianz (x,y)
	n = length(x); v = ones(1,n);
  s = sum((x-mittelwert(x)*v).*(y-mittelwert(y)*v))/(n-1);
endfunction
