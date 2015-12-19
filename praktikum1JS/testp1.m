% (a)
ci=[1]; xi=[0]; x=[0:0.1:5];
r=eval_newton_poly(ci,xi,x);
plot(x,r)

% (b)
ci=[1,2]; xi=[0,1]; x=[0:0.1:5];
r = eval_newton_poly(ci,xi,x);
plot(x,r)

% (c)
ci=[1,3,4]; xi=[0,1,2]; x=[0:0.1:5];
r = eval_newton_poly(ci,xi,x);
plot(x,r)
