%size: 1, skolems: 0
%size: 2, skolems: 0
%size: 2, skolems: 1
%size: 3, skolems: 0
%size: 3, skolems: 1
%size: 3, skolems: 2
%size: 4, skolems: 0
%size: 4, skolems: 1
%size: 4, skolems: 2
%size: 4, skolems: 3
%size: 5, skolems: 0
%size: 5, skolems: 1
dyadic_bk(f,A,B):-deduced(f1,A,C),deduced(f1,C,B).
pred(f,2).
dyadic_bk(f1,A,B):-deduced(pour_coffee,A,C),deduced(f1,C,B).
pred(f1,2).
dyadic_bk(f1,A,B):-deduced(pour_tea,A,C),deduced(move_right,C,B).
pred(f1,2).
dyadic_bk(f1,A,B):-deduced(turn_cup_over,A,C),deduced(f1,C,B).
pred(f1,2).
dyadic_bk(f1,A,B):-deduced(wants_coffee,A),deduced(move_right,A,B).
pred(f1,2).
%time,345.0275299549103

