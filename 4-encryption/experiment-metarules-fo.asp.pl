deduced(P1,A,B) :-
    meta(dident,P1,2,(P1,P2,P3)),
    deduced(P2,A,B),
    deduced(P3,A,B).
{meta(dident,P1,2,(P1,P2,P3))} :-
    pred(P2,2),
    pred(P3,2),
    order(P1,P2),
    order(P1,P3),
    deduced(P2,A,B),
    deduced(P3,A,B).

deduced(P1,A,B) :-
    meta(chain,P1,2,(P1,P2,P3)),
    deduced(P2,A,C),
    deduced(P3,C,B).
{meta(chain,P1,2,(P1,P2,P3))} :-
    pred(P2,2),
    pred(P3,2),
    order(P1,P2),
    order(P1,P3),
    deduced(P2,A,C),
    deduced(P3,C,B).

deduced(P1,A,B) :-
    meta(twident,P1,2,(P1,P2,P3)),
    deduced(P2,A,C),
    deduced(P3,B,C).
{meta(twident,P1,2,(P1,P2,P3))} :-
    pred(P2,2),
    pred(P3,2),
    order(P1,P2),
    order(P1,P3),
    deduced(P2,A,C),
    deduced(P3,B,C).
