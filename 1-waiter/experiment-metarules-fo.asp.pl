deduced(P1,A,B) :-
    meta(precon,P1,2,(P1,P2,P3)),
    deduced(P2,A),
    deduced(P3,A,B).
{meta(precon,P1,2,(P1,P2,P3))} :-
    pred(P2,1),
    pred(P3,2),
    order(P1,P2),
    order(P1,P3),
    deduced(P2,A),
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
    meta(postcon,P1,2,(P1,P2,P3)),
    deduced(P2,A,B),
    deduced(P3,B).
{meta(postcon,P1,2,(P1,P2,P3))} :-
    pred(P2,2),
    pred(P3,1),
    order(P1,P2),
    order(P1,P3),
    deduced(P2,A,B),
    deduced(P3,B).

deduced(P,A,B) :-
    meta(tailrec,P,2,(P,tailrec,Q)),
    deduced(Q,A,C),
    deduced(P,C,B).
{meta(tailrec,P,2,(P,tailrec,Q))} :-
    pred(Q,2),
    order(P,Q),
    deduced(Q,A,C),
    deduced(P,C,B).
