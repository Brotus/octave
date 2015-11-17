function a = spektralnorm(A)
% A		Matrix
% a		Ausgabe
a=sqrt(max(eig(A'*A)));
end