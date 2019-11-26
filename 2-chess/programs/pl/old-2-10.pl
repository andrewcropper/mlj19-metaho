
true.

% learning f/2
% clauses: 1
% clauses: 2
% clauses: 3
f(A,B):-f_1(B,A).
f(A,B):-f_1(A,C),f(C,B).
f_1(A,B):-tail(A,C),head(C,B).
%time,0.106685
