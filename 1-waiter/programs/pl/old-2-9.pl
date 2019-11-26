
true.

% learning f/2
% clauses: 1
% clauses: 2
% clauses: 3
% clauses: 4
% clauses: 5
f(A,B):-pour_coffee(A,C),move_right(C,B).
f(A,B):-f_1(A,C),f(C,B).
f_1(A,B):-wants_tea(A),pour_tea(A,B).
f_1(A,B):-move_right(A,C),turn_cup_over(C,B).
f_1(A,B):-turn_cup_over(A,C),pour_coffee(C,B).
%time,28.980460
