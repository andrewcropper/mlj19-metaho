%size: 1, skolems: 0
%size: 2, skolems: 0
%size: 2, skolems: 1
dyadic_bk(f,A,B):-map(f1,A,B).
pred(f,2).
dyadic_bk(f1,A,B):-deduced(reverse,A,C),deduced(tail,C,B).
pred(f1,2).
%time,1.720128059387207

