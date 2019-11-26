
true.

% learning f/2
% clauses: 1
% clauses: 2
% clauses: 3
% clauses: 4
% clauses: 5
f(A,B):-f_1(A,C),f_1(C,B).
f_1(A,B):-f_2(B,A).
f_1(A,B):-f_2(A,C),tail(C,B).
f_2(A,B):-tail(A,C),f_3(C,B).
f_3(A,B):-head(A,C),myreverse(C,B).
%time,437.501000
