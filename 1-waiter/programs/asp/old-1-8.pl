%size: 1, skolems: 0
%size: 2, skolems: 0
%size: 2, skolems: 1
%size: 3, skolems: 0
%size: 3, skolems: 1
dyadic_bk(f,A,B):-deduced(f1,A,C),deduced(f1,C,B).
pred(f,2).
dyadic_bk(f1,A,B):-deduced(pour_tea,A,C),deduced(move_right,C,B).
pred(f1,2).
dyadic_bk(f1,A,B):-deduced(turn_cup_over,A,C),deduced(f1,C,B).
pred(f1,2).
%time,0.6538219451904297

