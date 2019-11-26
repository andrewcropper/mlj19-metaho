until(A,A,Cond,F):-
    state(A),
    pred(F,2),
    deduced(Cond,A).
until(A,B,Cond,F):-
    state(A),
    not deduced(Cond,A),
    deduced(F,A,C),
    until(C,B,Cond,F).

ifthenelse(A,B,Cond,Then,Else):-
    state(A),
    pred(Else,2),
    deduced(Cond,A),
    deduced(Then,A,B).
ifthenelse(A,B,Cond,Then,Else):-
    state(A),
    pred(Then,2),
    pred(Cond,1),
    not deduced(Cond,A),
    deduced(Else,A,B).
