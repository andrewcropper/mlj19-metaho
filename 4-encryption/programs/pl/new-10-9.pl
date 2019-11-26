
true.

% learning f/2
% clauses: 1
% clauses: 2
% clauses: 3
% clauses: 4
f(A,B):-f_1(A,C),f_1(C,B).
f_1(A,B):-map(A,B,f_2).
f_2(A,B):-my_prec(A,C),int_to_char(C,B).
f_2(A,B):-char_to_int(A,C),my_prec(C,B).
%time,60.477195
