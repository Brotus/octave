function a = zeilenbetragssummennorm(A)
% A		Matrix
% a		Ausgabe
v=zeros(1,size(A)(1));
for i=1:size(A)(1)
	for j=1:size(A)(2)
		v(i)=v(i) + abs(A(i,j));
	end
end
a=max(v);
end