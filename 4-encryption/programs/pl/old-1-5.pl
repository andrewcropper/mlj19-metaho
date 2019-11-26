
true.

% learning f/2
% clauses: 1
% clauses: 2
% clauses: 3
% clauses: 4
f(A,B):-f_1(B,A).
f(A,B):-tail(A,C),f(C,B).
f_1(A,B):-f_2(A,C),f_2(C,B).
f_2(A,B):-tail(A,C),tail(C,B).
%time,0.397546
