
true.

% learning f/2
% clauses: 1
% clauses: 2
% clauses: 3
f(A,B):-f_1(A,C),f_1(C,B).
f_1(A,B):-turn_cup_over(A,C),f_2(C,B).
f_2(A,B):-pour_coffee(A,C),move_right(C,B).
%time,0.013275
