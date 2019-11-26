
true.

% learning f/2
% clauses: 1
% clauses: 2
f(A,B):-head(A,C),f_1(C,B).
f_1(A,B):-head(B,A).
%time,0.004681
