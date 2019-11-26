
true.

% learning f/2
% clauses: 1
% clauses: 2
% clauses: 3
% clauses: 4
f(A,B):-until(A,B,at_end,f_1).
f_1(A,B):-turn_cup_over(A,C),f_2(C,B).
f_2(A,B):-f_3(A,C),move_right(C,B).
f_3(A,B):-ifthenelse(A,B,wants_coffee,pour_coffee,pour_tea).
%time,39.792178
