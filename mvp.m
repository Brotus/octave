function v = mvp(A,b)
if size(A)(2) == length (b)
for i = 1:size(A)(1)
u = A(i,1:end);
for j = 1:length (b)
g(j) = u(j) * b(j);
endfor
v(i) =  sum(g);
endfor
else error("Dimensions don´t match");
endif
endfunction