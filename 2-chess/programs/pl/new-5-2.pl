
true.

% learning f/2
% clauses: 1
% clauses: 2
% clauses: 3
f(A,B):-map(A,B,f_1).
f_1(A,B):-until(A,B,rank8,forward).
f_1(A,B):-hold(A,C),hold(C,B).
%time,0.058747
