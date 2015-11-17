function a = spaltenbetragssummennorm(A)
% A		Matrix
% a		Ausgabe
v=zeros(1,size(A)(2));
for i=1:size(A)(2)
	for j=1:size(A)(1)
		v(i)=v(i) + abs(A(j,i));
	end
end
a=max(v);
end