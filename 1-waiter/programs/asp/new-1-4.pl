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
dyadic_bk(f1,A,B):-deduced(move_right,A,C),deduced(turn_cup_over,C,B).
pred(f1,2).
dyadic_bk(f1,A,B):-ifthenelse(A,B,wants_coffee,pour_coffee,turn_cup_over).
pred(f1,2).
dyadic_bk(f1,A,B):-ifthenelse(A,B,wants_tea,pour_tea,move_right).
pred(f1,2).
%time,8.695935010910034

