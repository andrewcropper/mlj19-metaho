
true.

% learning f/2
% clauses: 1
% clauses: 2
% clauses: 3
% clauses: 4
f(A,B):-head(A,C),f_1(C,B).
f_1(A,B):-f_2(B,A).
f_2(A,B):-tail(A,C),head(C,B).
f_2(A,B):-tail(A,C),f_2(C,B).
%time,0.240107
