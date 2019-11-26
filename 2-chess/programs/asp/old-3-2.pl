%size: 1, skolems: 0
%size: 2, skolems: 0
%size: 2, skolems: 1
%size: 3, skolems: 0
%size: 3, skolems: 1
%size: 3, skolems: 2
%size: 4, skolems: 0
%size: 4, skolems: 1
dyadic_bk(f,A,B):-deduced(f1,A,C),deduced(head,B,C).
pred(f,2).
dyadic_bk(f,A,B):-deduced(forward,A,C),deduced(f,C,B).
pred(f,2).
dyadic_bk(f,A,B):-deduced(head,A,C),deduced(f,C,B).
pred(f,2).
dyadic_bk(f1,A,B):-deduced(hold,A,B),deduced(rank8,B).
pred(f1,2).
%time,381.0515651702881

