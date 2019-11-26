
true.

% learning f/2
% clauses: 1
% clauses: 2
% clauses: 3
% clauses: 4
% clauses: 5
f(A,B):-head(B,A).
f(A,B):-f_1(A,C),f(C,B).
f_1(A,B):-forward(A,C),f_2(C,B).
f_1(A,B):-head(A,C),forward(C,B).
f_2(A,B):-forward(A,C),forward(C,B).
%time,122.150896
