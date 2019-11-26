map(F,"[]","[]"):-
    pred(F,2).
map(F,L1,L2) :-
    map(F,T1,T2),
    pred(F,2),
    state(L1),
    deduced(F,H1,H2),
    dyadic_bk(head,L1,H1),
    dyadic_bk(tail,L1,T1),
    &pyPrepend[H2,T2](L2).

until(A,A,Cond,F):-
    state(A),
    pred(F,2),
    deduced(Cond,A).
until(A,B,Cond,F):-
    state(A),
    not deduced(Cond,A),
    deduced(F,A,C),
    until(C,B,Cond,F).
