%size: 1, skolems: 0
%size: 2, skolems: 0
%size: 2, skolems: 1
%size: 3, skolems: 0
%size: 3, skolems: 1
%size: 3, skolems: 2
dyadic_bk(f,A,B):-map(f1,A,B).
pred(f,2).
dyadic_bk(f1,A,B):-deduced(f2,A,C),deduced(int_to_char,C,B).
pred(f1,2).
dyadic_bk(f2,A,B):-deduced(char_to_int,A,C),deduced(my_prec,C,B).
pred(f2,2).
%time,14.573166847229004

