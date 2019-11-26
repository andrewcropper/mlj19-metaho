%size: 1, skolems: 0
%size: 2, skolems: 0
%size: 2, skolems: 1
%size: 3, skolems: 0
dyadic_bk(f,A,B):-deduced(forward,A,C),deduced(f,C,B).
pred(f,2).
dyadic_bk(f,A,B):-deduced(forward,A,C),deduced(head,B,C).
pred(f,2).
dyadic_bk(f,A,B):-deduced(head,A,C),deduced(f,C,B).
pred(f,2).
%time,0.5661468505859375

