clc
clear all
%% 
fun = @(x) -(20*x(1) + 16*x(2) - 2*x(1)^2-x(2)^2-(x(1)+x(2))^2);
lb = [0 0];
ub = [inf inf];
A = [1 1];
b = [5];
Aeq = [];
beq = [];
x0 = [0 0];        
[x, xfval] = fmincon(fun,x0,A,b,Aeq,beq,lb,ub)

%% 
fun = @(x) x(1)^2+x(2)^2+2*x(3)^2+x(4)^2-5*x(1)-5*x(2)-21*x(3)+7*x(4);
lb = [0 0 0 0];
ub = [inf inf inf inf];
A = [];
b = [];
Aeq = [];
beq = [];
x0 = [0 0 0 0];
nonlcon = @nlpcon; 
options = optimoptions('fmincon','Display','off');
[x, xfval] = fmincon(fun,x0,A,b,Aeq,beq,lb,ub,nonlcon)