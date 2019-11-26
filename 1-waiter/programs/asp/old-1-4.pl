%size: 1, skolems: 0
%size: 2, skolems: 0
%size: 2, skolems: 1
%size: 3, skolems: 0
%size: 3, skolems: 1
%size: 3, skolems: 2
%size: 4, skolems: 0
dyadic_bk(f,A,B):-deduced(move_right,A,C),deduced(f,C,B).
pred(f,2).
dyadic_bk(f,A,B):-deduced(pour_coffee,A,C),deduced(move_right,C,B).
pred(f,2).
dyadic_bk(f,A,B):-deduced(pour_tea,A,C),deduced(f,C,B).
pred(f,2).
dyadic_bk(f,A,B):-deduced(turn_cup_over,A,C),deduced(f,C,B).
pred(f,2).
%time,4.108338117599487

