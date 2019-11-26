%size: 1, skolems: 0
%size: 2, skolems: 0
%size: 2, skolems: 1
%size: 3, skolems: 0
%size: 3, skolems: 1
%size: 3, skolems: 2
%size: 4, skolems: 0
%size: 4, skolems: 1
dyadic_bk(f,A,B):-deduced(f1,A,C),deduced(f,C,B).
pred(f,2).
dyadic_bk(f,A,B):-deduced(forward,A,C),deduced(f1,B,C).
pred(f,2).
dyadic_bk(f1,A,B):-deduced(forward,A,B),deduced(not_rank8,B).
pred(f1,2).
dyadic_bk(f1,A,B):-deduced(tail,A,C),deduced(head,C,B).
pred(f1,2).
%time,243.53906989097595

