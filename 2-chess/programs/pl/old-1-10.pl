
true.

% learning f/2
% clauses: 1
% clauses: 2
% clauses: 3
% clauses: 4
f(A,B):-f_1(B,A).
f(A,B):-f_1(A,C),f(C,B).
f_1(A,B):-forward(A,C),forward(C,B).
f_1(A,B):-tail(A,C),head(C,B).
%time,259.161082
