%size: 1, skolems: 0
%size: 2, skolems: 0
%size: 2, skolems: 1
dyadic_bk(f,A,B):-deduced(head,A,C),deduced(f1,B,C).
pred(f,2).
dyadic_bk(f1,A,B):-deduced(head,A,B),deduced(rank8,B).
pred(f1,2).
%time,0.40799784660339355

