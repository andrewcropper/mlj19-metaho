
true.

% learning f/2
% clauses: 1
% clauses: 2
% clauses: 3
% clauses: 4
f(A,B):-head(A,C),f_1(C,B).
f_1(A,B):-f_2(B,A).
f_2(A,B):-tail(A,C),f_3(C,B).
f_3(A,B):-tail(A,C),head(C,B).
%time,0.254866
