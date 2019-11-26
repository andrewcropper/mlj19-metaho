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

deduced(P,A,B) :-
    meta(ifthenelse,P,2,(P,If,Then,Else)),
    ifthenelse(A,B,If,Then,Else).
{meta(ifthenelse,P,2,(P,If,Then,Else))} :-
    pred(If,1),
    pred(Then,2),
    pred(Else,2),
    order(P,If),
    order(P,Then),
    order(P,Else),
    Then != Else,
    ifthenelse(A,B,If,Then,Else).

deduced(P,A,B) :-
    meta(until,P,2,(P,Cond,F)),
    until(A,B,Cond,F).
{meta(until,P,2,(P,Cond,F))} :-
    pred(Cond,1),
    pred(F,2),
    order(P,Cond),
    order(P,F),
    until(A,B,Cond,F).
