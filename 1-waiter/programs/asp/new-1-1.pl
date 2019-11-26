%size: 1, skolems: 0
%size: 2, skolems: 0
%size: 2, skolems: 1
%size: 3, skolems: 0
%size: 3, skolems: 1
dyadic_bk(f,A,B):-until(A,B,at_end,f1).
pred(f,2).
dyadic_bk(f1,A,B):-deduced(pour_coffee,A,C),deduced(move_right,C,B).
pred(f1,2).
dyadic_bk(f1,A,B):-ifthenelse(A,B,wants_coffee,turn_cup_over,move_right).
pred(f1,2).
%time,5.150214910507202

