f=@(x) exp(x);

% Teilaufgabe a

wi = [];
ti = [];

T0 = [0,1];
T1 = [0,1/2,1];
T2 = [0,1/4,1/2,3/4,1];
T3 = zeros(1,2^3+1);
for i = 1:2^3
  T3(i+1)= i * 2^-3;
endfor
T4 = zeros(1,2^4+1);
for i = 1:2^4
  T4(i+1)= i * 2^-4;
endfor
T5 = zeros(1,2^5+1);
for i = 1:2^5
  T5(i+1)= i * 2^-5;
endfor

% linksseitige Rechteckregel
SI0_recht = sum_quadrature(f,T0,0,1);

