%size: 1, skolems: 0
%size: 2, skolems: 0
%size: 2, skolems: 1
%size: 3, skolems: 0
%size: 3, skolems: 1
%size: 3, skolems: 2
%size: 4, skolems: 0
%size: 4, skolems: 1
%size: 4, skolems: 2
dyadic_bk(f,A,B):-until(A,B,at_end,f1).
pred(f,2).
dyadic_bk(f1,A,B):-deduced(f2,A,C),deduced(move_right,C,B).
pred(f1,2).
dyadic_bk(f1,A,B):-ifthenelse(A,B,at_end,move_right,turn_cup_over).
pred(f1,2).
dyadic_bk(f2,A,B):-ifthenelse(A,B,wants_tea,pour_tea,pour_coffee).
pred(f2,2).
%time,570.1611328125

