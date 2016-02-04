function x=solve(A,b)
% berechne x für A*x=b
% Eingabe:  A... reguläre nxn Matrix 
%           b... rechte Seite, nxm Matrix
% Ausgabe:  x... Lösung, nxm Matrix
[R,y]=gauss(A,b);
x=backward(R,y);
end