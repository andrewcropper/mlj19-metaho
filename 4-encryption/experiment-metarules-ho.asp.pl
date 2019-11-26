{meta(chain,P1,2,(P1,P2,P3))} :-
    pred(P2,2),
    pred(P3,2),
    order(P1,P2),
    order(P1,P3),
    deduced(P2,A,C),
    deduced(P3,C,B).
deduced(P1,A,B) :-
    meta(chain,P1,2,(P1,P2,P3)),
    deduced(P2,A,C),
    deduced(P3,C,B).

{meta(map,P,2,(P,map,F))} :-
    pred(F,2),
    order(P,F),
    map(F,A,B).
deduced(P,A,B) :-
    meta(map,P,2,(P,map,F)),
    map(F,A,B).
