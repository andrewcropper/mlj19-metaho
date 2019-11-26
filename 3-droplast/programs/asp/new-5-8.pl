%size: 1, skolems: 0
%size: 2, skolems: 0
%size: 2, skolems: 1
%size: 3, skolems: 0
%size: 3, skolems: 1
%size: 3, skolems: 2
dyadic_bk(f,A,B):-map(f1,A,B).
pred(f,2).
dyadic_bk(f1,A,B):-deduced(f2,A,C),deduced(reverse,C,B).
pred(f1,2).
dyadic_bk(f2,A,B):-deduced(reverse,A,C),deduced(tail,C,B).
pred(f2,2).
%time,184.70748591423035

