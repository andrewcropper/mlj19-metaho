{meta(precon,P1,2,(P1,P2,P3))} :-
    pred(P2,1),
    pred(P3,2),
    order(P1,P2),
    order(P1,P3),
    deduced(P2,A),
    deduced(P3,A,B).

{meta(map,P,2,(P,map,F))} :-
    pred(F,2),
    order(P,F),
    map(F,A,B).
deduced(P,A,B) :-
    meta(map,P,2,(P,map,F)),
    map(F,A,B).

{meta(until,P,2,(P,Cond,F))} :-
    pred(Cond,1),
    pred(F,2),
    order(P,Cond),
    order(P,F),
    until(A,B,Cond,F).
deduced(P,A,B) :-
    meta(until,P,2,(P,Cond,F)),
    until(A,B,Cond,F).
