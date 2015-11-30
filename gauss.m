function [A,b] = gauss(A,b)
	n=size(A,1);
	for j=1:n
		[m,i]=max(abs(A(j:n,j))); i=i+j-1;
		for k=j:n
			tmp=A(i,k); A(i,k)=A(j,k); A(j,k)=tmp;
		end
		A
		tmp=b(i); b(i)=b(j); b(j)=tmp;
		for i=j+1:n
			lij=A(i,j)/A(j,j);
			for k=j:n
				A(i,k) = A(i,k)-lij*A(j,k);
			end
			b(i)=b(i)-lij*b(j);
		end
		[A b]
	end
end
