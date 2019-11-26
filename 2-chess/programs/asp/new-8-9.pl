%size: 1, skolems: 0
%size: 2, skolems: 0
%size: 2, skolems: 1
%size: 3, skolems: 0
%size: 3, skolems: 1
dyadic_bk(f,A,B):-map(f1,A,B).
pred(f,2).
dyadic_bk(f1,A,B):-until(A,B,not_pawn,tail).
pred(f1,2).
dyadic_bk(f1,A,B):-until(A,B,rank8,forward).
pred(f1,2).
%time,1.379777193069458

