function d = determinant (A)

d = 1;
[R,y] = gauss(A,[]);
for k= 1:length(A)
	d = d * R(k,k);
end
d=y*d;