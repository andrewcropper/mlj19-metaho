
true.

% learning f/2
% clauses: 1
% clauses: 2
% clauses: 3
% clauses: 4
f(A,B):-f_2(B,A).
f(A,B):-f_1(A,C),f(C,B).
f_1(A,B):-tail(A,C),tail(C,B).
f_2(A,B):-head(A,C),tail(C,B).
%time,6.095004
