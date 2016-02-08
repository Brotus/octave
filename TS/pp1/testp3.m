% (a)
disp('Aufgabe (a)')
f = @(x) exp(x);
n = 1;
k = 0:10;
h = 2.^(-k);
i = 0:n;
% Stützstellen
x = [];
for j=1:length(k)
  x(j,:) = h(j)*i;
end
% Stützwerte
s = f(x);
% Ausgabe
for j=1:length(k)
  [ci,xi] = compute_newton_poly(x(j,:),s(j,:));
  disp([['h' 'c' 'c' 'x' 'x']' [' ' ' ' ' ' ' ' ' ']' num2str([h(j) ci xi]')])
  disp('  ')
end

% (b)
disp('Aufgabe (b)')
e = [];
for j=1:length(k)
  % "feineres Gitter"
  X = 0:h(j)/10:n*h(j);
  % Funktion ausgewertet
  FX = f(X);
  % erneutes Berechnen, da Abhängigkeit von h besteht
  [ci,xi] = compute_newton_poly(x(j,:),s(j,:));
  NX = eval_newton_poly(ci,xi,X);
  % Fehlervektor befüllen
  e(j) = max(abs(FX-NX));
end
e

% (c)
disp('Aufgabe (c)')
eoc = [];
% eoc berechnen. -1 bedeutet, dass dieser eoc undefiniert ist
for j=1:length(k)
  if j ~= 1
    eoc(j) = log(e(j-1)/e(j)) / log(h(j-1)/h(j));
  else
    eoc(j) = -1;
  end
end
disp([h' e' eoc'])
% Tabelle um alles zu speichern (zum Plot benötigt)
AllTables = [h' e' eoc'];

% (d)
disp('Aufgabe (d)')
% aus reiner Übersicht erneute Definition
f = @(x) exp(x);
k = 0:10;
h = 2.^(-k);

for m=2:5
n = m;
i = 0:n;
x = [];
  % Stützstellen
  for j=1:length(k)
    x(j,:) = h(j)*i;
  end
  % Stützwerte
  s = f(x);
  % Fehlervektor
  e = [];
  for j=1:length(k)
    % "feineres Gitter"
    X = 0:h(j)/10:n*h(j);
    % Funktion ausgewertet
    FX = f(X);
    % Berechnen
    [ci,xi] = compute_newton_poly(x(j,:),s(j,:));
    NX = eval_newton_poly(ci,xi,X);
    % Fehlervektor befüllen
    e(j) = max(abs(FX-NX));
  end
  eoc = [];
  % eoc berechnen. -1 bedeutet, dass dieser eoc undefiniert ist
  for j=1:length(k)
    if j ~= 1
      eoc(j) = log(e(j-1)/e(j)) / log(h(j-1)/h(j));
    else
      eoc(j) = -1;
    end
  end
  n
  table = [h' e' eoc']
  AllTables = [AllTables table];
end

% (e)
figure
loglog(
h,AllTables(:,2),'r',
h,AllTables(:,5),'b',
h,AllTables(:,8),'g',
h,AllTables(:,11),'c',
h,AllTables(:,14),'m',
h,h.^1,'ro',
h,h.^2,'bo',
h,h.^3,'go',
h,h.^4,'co',
h,h.^5,'mo')
title('Aufgabe (e)');
xlabel('h');
ylabel('e(h,n)');
legend('n=1', 'n=2', 'n=3', 'n=4', 'n=5', 'Location', 'northwest')

% Der EOC konvergiert wie vorgesehen gegen n+1; allerdings werden bei n=4 und n=5 die Werte zu klein und der EOC fehlerhaft