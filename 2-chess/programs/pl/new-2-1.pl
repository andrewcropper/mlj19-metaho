
true.

% learning f/2
% clauses: 1
% clauses: 2
% clauses: 3
f(A,B):-head(A,C),f_1(C,B).
f_1(A,B):-head(B,A).
f_1(A,B):-forward(A,C),f_1(C,B).
%time,0.026320
