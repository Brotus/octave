
format long;
h=1./(2.^(0:5));
z = zeros(6,33);
for(i = 1:6)
    for(j = 0:32)
        if(h(i)*j > 1)
            break
        else
            z(i,j+1) = h(i)*j;
        end
    end
end

% initializing
f=@(x) exp(x);
a=0;
b=2.^-(0:5);
q = zeros(3,6);

% Linksseitige Rechtecksregel
ti = 0; 
wi = 1;
for i=1:length(b);
	q(1,i) = sum_quadrature (f,z(i,1:2^(i-1)+1),ti,wi);
end

% Trapezregel
ti = [0,1]; 
wi =[1/2 1/2];
for i=1:length(b);
	q(2,i) = sum_quadrature (f,z(i,1:2^(i-1)+1),ti,wi);
end

% Simpsonregel
ti = [0 0.5 1]; 
wi = [1/6 4/6 1/6];
for i=1:length(b);
	q(3,i) = sum_quadrature (f,z(i,1:2^(i-1)+1),ti,wi);
end

% Die exakten Werte
integ = exp(1)-1;
Tab = zeros(6,4);
Tab(:,1) = h;
err = zeros(6,3);
for k = 1:3;
  if (k == 1)
      fprintf('Linksseitige Rechtecksregel \n')
    elseif (k == 2)
      fprintf('Trapezregel \n')
    else
      fprintf('Simpson \n')
  end
    fprintf('h | Quadtratur | Fehler | eoc')
  for i = 1:6; 
    Tab(i,2) = q(k,i);
    Tab(i,3) = abs(integ-q(k,i));
    err(i,k) = Tab (i,3);
    if (i > 1)
    % log fehlerquotient / log h-quotient
      Tab(i,4) = log(Tab(i-1,3)/Tab(i,3))/log(Tab(i-1,1)/Tab(i,1));
    else 
      Tab(i,4) = inf;  
    end
  end
  Tab
end

% Für Exaktheitsgrad m ist die Konvergenzordnung m+1
% Für m = 0, 1, 3 konvergiert der eoc gegen 1, 2, 4


% (c)
loglog(h,err(:,1),'.-',h,err(:,2),'.-',h,err(:,3),'.-')
legend('Rechteck','Trapez','Simpson','Location','west')

