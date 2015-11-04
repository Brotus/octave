function d = mydiff(x)
for i = 1:(length(x)-1)
d(i) = x(i+1)- x(i);
endfor
endfunction