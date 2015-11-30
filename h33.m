
n=[0,0,0,0,0];

%Gauss-Operationen
gauss=n;
%Rückwärtseinsätzen-Operationen
rueckwaerts=n;
%Benötigte Zeit in Sekunden
timeInSec=n;
%Anzahl zu speichernder Elemente
space=n;
%In Byte umgerechnet
spaceInByte=n;

function ops = gaussOps(n)
%vgl S.89
	ops = 1/3*n*(n^2+3*n-4);
end

function ops = rueckOps(n)
%vgl S.89
 ops = 1/2*n*(n+1);
end

function space = spaceOfGaussRueck(n)
%n^2+n vom Gauß and n vom Rueckwärtseinsätzen
 space = n^2+2*n;
end

function time =timeOf(ops)
%geteilt durch die Rechenleistung in der Aufgabenstellung
 time = ops/(2*10^9);
end

function byte = byteSpace(space)
%mal 8 byte pro Zahl zum speichern
 byte = space *8;
end

for i=1:5
 n(i)=10^i;
 gauss(i)=gaussOps(n(i));
 rueckwaerts(i)=rueckOps(n(i));
 space(i)=spaceOfGaussRueck(n(i));
 spaceInByte(i)=byteSpace(space(i)); 
 timeInSec(i)=timeOf(gauss(i)+rueckwaerts(i));
end

n
gauss
rueckwaerts
timeInSec
space
spaceInByte