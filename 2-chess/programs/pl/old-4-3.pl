
true.

% learning f/2
% clauses: 1
% clauses: 2
% clauses: 3
% clauses: 4
f(A,B):-head(A,C),f_1(C,B).
f_1(A,B):-rank8(A),f_2(A,B).
f_1(A,B):-forward(A,C),f_1(C,B).
f_2(A,B):-head(B,A).
%time,0.738162
