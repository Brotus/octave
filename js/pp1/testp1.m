clc;
% Komplexitaet von eval_newton_poly:
% Sei n die Laenge von ci und m die Laenge von x. Zaehlt man nur Multiplikationen und Divisionen,
% so betraegt die Komplexitaet in der Eingabe
% #(ops) = O(1)+m*n*(O(1)+O(n)+O(1)) = O(m*n^2).

% Initialisierung der Ausgangswerte
x = 0:0.1:5;
x2= [0,5];
ci1=1;ci2=[1,2];ci3=[1,3,4];
xi1=0;xi2=[0,1];xi3=0:2;

% Die yi sind Vektoren der Funktionswerte an den Eintraegen von x
y1=eval_newton_poly(ci1,xi1,x);
y2=eval_newton_poly(ci2,xi2,x);
y3=eval_newton_poly(ci3,xi3,x);

% Die von Hand berechnete Monom-Darstellung fuer den plot
p1=@(x) 1;
p2=@(x) 2*x+1;
p3=@(x) 4*x.^2-x+1;

% Die fplot punkte
[a1,b1] = fplot(p1, x2);
[a2,b2] = fplot(p2, x2);
[a3,b3] = fplot(p3, x2);

% Erzeuge ein Plotfenster mit 3 subplots.
subplot (3, 1, 1)
plot(x,y1,'--r',a1,b1,':b')
subplot (3, 1, 2)
plot(x,y2,'--r',a2,b2,':b')
subplot (3, 1, 3)
plot(x,y3,'--r',a3,b3,':b') 