%size: 1, skolems: 0
%size: 2, skolems: 0
%size: 2, skolems: 1
%size: 3, skolems: 0
%size: 3, skolems: 1
dyadic_bk(f,A,B):-until(A,B,at_end,f1).
pred(f,2).
dyadic_bk(f1,A,B):-deduced(turn_cup_over,A,C),deduced(pour_tea,C,B).
pred(f1,2).
dyadic_bk(f1,A,B):-ifthenelse(A,B,wants_coffee,pour_coffee,move_right).
pred(f1,2).
%time,0.9326009750366211

