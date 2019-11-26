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
dyadic_bk(f1,A,B):-ifthenelse(A,B,at_end,pour_coffee,turn_cup_over).
pred(f1,2).
dyadic_bk(f1,A,B):-ifthenelse(A,B,wants_coffee,move_right,pour_tea).
pred(f1,2).
dyadic_bk(f1,A,B):-ifthenelse(A,B,wants_coffee,pour_coffee,move_right).
pred(f1,2).
%time,188.52955198287964

