% Intialisierung
f=@(x) exp(x);
n=1;
h=2.^[-10:0];
i=0:n;
x= zeros(length(h),length(i));
for j=1:length(h);
x(j,:)=i.*h(j);
end

% Aufgabe a
disp ("Aufgabe a")
disp("Die i-te Zeile von x enthaelt die Stuetzstellen zu h(i)")
x

disp("Die entsprechen Werte von exp(x) sind:")
y=f(x)

for j=1:length(h);
[ci,xi] = compute_newton_poly(x(j,:),y(j,:));
fprintf('Fuer h = %2f erhalten wir das Polynom \n p_1(X) = %4.2f + (x - %4.2f)*%4.2f. \n',h(j),ci(1),xi(1),ci(2))
end

% Aufgabe b
disp("Aufgabe b")
% Was wir suchen ist genau die Maximumsnorm des Vektors f(x) und 
% entsprechendes r_i auf dem Gitter "mash".

disp(" Fuer n=1 erhalten wir")
er = [];
for j = 1:length(h);
% Das entsprechende Gitter;
mash = [0:h(j)/10:n*h(j)];
% Erneutes berechnen
[ci, xi] = compute_newton_poly(x(j,:),y(j,:));
% Das Polynom ausgewertet an diesen Stelle
r = eval_newton_poly (ci, xi, mash);
% Der Fehler ist damit
er(j) = norm(f(mash)'-r', inf);
%er(j) = norm(f(mash)-r, inf)
end
er

% Aufgabe c
disp("Aufgabe c")
eoc = zeros(1,length(h));
eoc(1) = inf;
for j = 2:length(h);
eoc(j) = log(er(j-1)/er(j)) / log(h(j-1)/h(j));
end
Tab = [h; er; eoc]'

% d
disp("Aufgabe d")
for n=2:5;
  % Intialisierung
  i=0:n;
  x= zeros(length(h),length(i));
  for j=1:length(h);
    x(j,:)=i.*h(j);
  end
  y=f(x);

  for j = 1:length(h);
    % Das entsprechende Gitter;
    mash = [0:h(j)/10:n*h(j)];
    % Erneutes berechnen
    [ci, xi] = compute_newton_poly(x(j,:),y(j,:));
    % Das Polynom ausgewertet an diesen Stelle
    r = eval_newton_poly (ci, xi, mash);
    % Der Fehler ist damit
    er(j) = norm(f(mash)'-r', inf);
   end
    
   % eoc
   eoc = zeros(1,length(h));
   eoc(1) = inf;    
   for j = 2:length(h);
     eoc(j) = log(er(j-1)/er(j)) / log(h(j-1)/h(j));
   end
   fprintf('Fuer n = %1.0f \n', n)
   tab = [h; er ;eoc]'
   Tab = [Tab tab];
end
%e
title("Aufgabe e: h vs e(h,n)")
xlabel("h")
ylabel("e(h,n)")
loglog(h,Tab(:,2),h,Tab(:,5),h,Tab(:,8),h,Tab(:,11),h,Tab(:,14),h,f(h))
legend('n=2','n=3','n=4','n=5','n=1','f(x)','Location','northwest')