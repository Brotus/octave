% Aufgabe (a): (n+1)-mal 1.

% Aufgabe (b)
disp(['Aufgabe (b)'])
m = 100;
f = @(x) 0;
for n=0:10
  f = @(x) f(x) + x^n;
  [x,y] = generateData(m,f);
  [A,b] = leastSquareSystem(x,y,n);
  [Q,R] = qr(A);
  n
  NG = A.'*A\A.'*b
  QR = Q.'*Q*R\Q.'*b
  % Konditionen cond_2(A) = ||A^-1||_2 * ||A|| berechnen
  condNG(n+1) = norm(inverse(A.'*A))*norm(A.'*A);
  condQR(n+1) = norm(inverse(R.'*R))*norm(R.'*R);
  % Fehler
  FehlNG(n+1) = norm(ones(1,n+1)-NG,inf);
  FehlQR(n+1) = norm(ones(1,n+1)-QR,inf);
end

% Aufgabe (c)

table = [[0:10]' condNG.' condQR.'];
disp(['Aufgabe (c)'])
disp(['       ' 'n' '         ' 'Nor.gl.' '       ' 'QR'])
disp(table)
% NG >= QR

% Aufgabe (d)
format short e
Table = [[0:10]' FehlNG.' FehlQR.'];
disp(['Aufgabe (d)'])
disp(['       ' 'n' '         ' 'Nor.gl.' '       ' 'QR'])
disp(Table)
format short
% Trotz des einfachen Beispiels wird deutlich, dass die QR-Zerlegung besser ist