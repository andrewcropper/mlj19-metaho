
true.

% learning f/2
% clauses: 1
% clauses: 2
% clauses: 3
% clauses: 4
% clauses: 5
f(A,B):-wants_coffee(A),move_right(A,B).
f(A,B):-f_1(A,C),f(C,B).
f_1(A,B):-turn_cup_over(A,C),pour_tea(C,B).
f_1(A,B):-move_right(A,C),f_1(C,B).
f_1(A,B):-turn_cup_over(A,C),pour_coffee(C,B).
%time,242.584784
