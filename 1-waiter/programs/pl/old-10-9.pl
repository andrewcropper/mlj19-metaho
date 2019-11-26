
true.

% learning f/2
% clauses: 1
% clauses: 2
% clauses: 3
% clauses: 4
% clauses: 5
% clauses: 6
f(A,B):-turn_cup_over(A,C),f_1(C,B).
f_1(A,B):-move_right(A,B),at_end(B).
f_1(A,B):-f_2(A,C),f_1(C,B).
f_2(A,B):-wants_tea(A),pour_tea(A,B).
f_2(A,B):-move_right(A,C),turn_cup_over(C,B).
f_2(A,B):-wants_coffee(A),pour_coffee(A,B).
%time,36.420696
