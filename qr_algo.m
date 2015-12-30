function y=qr_algo(A,b)
% Berechne Matrix Rt der QR-Zerlegung A=Q*Rt und c=Q'*b
% Eingabe: A ... mxn Matrix
% b ... mx1 Vektor
% Ausgabe: A ... rechte obere Dreiecksmatrix Rt
% b ... transformierter mx1 Vektor Q'*b
[m,n]=size(A);
for j=1:n % laufe uber Spalten
	for i=j+1:m
		if A(i,j) ~= 0 % sonst ist nichts zu tun
			x=A(j,j); y=A(i,j); f=sqrt(x^2+y^2);
			g11=x/f; g12=y/f; g21=-y/f; g22=x/f;
			% modifiziere Zeilen von A und b mit Givensrotation
				for k=j:n
					ajk=A(j,k); aik=A(i,k);
					A(j,k)=g11*ajk+g12*aik;
					A(i,k)=g21*ajk+g22*aik;
				end
			bj=b(j); bi=b(i);
			b(j)=g11*bj+g12*bi;
			b(i)=g21*bj+g22*bi;
		end % if
	end
end
y=[A,b];
end