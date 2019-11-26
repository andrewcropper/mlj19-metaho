
true.

% learning f/2
% clauses: 1
% clauses: 2
% clauses: 3
f(A,B):-map(A,B,f_1).
f_1(A,A):-not_pawn(A).
f_1(A,B):-until(A,B,rank8,forward).
%time,0.090843
