%size: 1, skolems: 0
%size: 2, skolems: 0
%size: 2, skolems: 1
%size: 3, skolems: 0
%size: 3, skolems: 1
%size: 3, skolems: 2
%size: 4, skolems: 0
%size: 4, skolems: 1
dyadic_bk(f,A,B):-until(A,B,at_end,f1).
pred(f,2).
dyadic_bk(f1,A,B):-ifthenelse(A,B,wants_coffee,move_right,turn_cup_over).
pred(f1,2).
dyadic_bk(f1,A,B):-ifthenelse(A,B,wants_coffee,turn_cup_over,pour_tea).
pred(f1,2).
dyadic_bk(f1,A,B):-ifthenelse(A,B,wants_tea,move_right,pour_coffee).
pred(f1,2).
%time,95.73095679283142

