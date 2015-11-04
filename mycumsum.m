function s = mycumsum(x)
r = x(1);
for i = 2:length (x)
r = [r r(i-1)+x(i)];
endfor
s=r;