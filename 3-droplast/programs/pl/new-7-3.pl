
true.

% learning f/2
% clauses: 1
% clauses: 2
% clauses: 3
f(A,B):-map(A,B,f_1).
f_1(A,B):-myreverse(A,C),f_2(C,B).
f_2(A,B):-tail(A,C),myreverse(C,B).
%time,0.040291
