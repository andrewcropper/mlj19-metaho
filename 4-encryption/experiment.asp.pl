pred(P,A):-
    meta(_,P,A,_),
    skolem(P).
:-
    pred(P,A1),
    pred(P,A2),
    A1 != A2.

%{meta(ident,P1,2,(P1,ident,P2))} :-
%    pred(P2,2),
%    order(P1,P2),
%    deduced(P2,X,Y).
%deduced(P1,X,Y) :-
%    meta(ident,P1,2,(P1,ident,P2)),
%    deduced(P2,X,Y).

%{meta(monadic,P1,2,(P1,monadic,P2))} :-
%    pred(P2,1),
%    order(P1,P2),
%    deduced(P2,X).
%deduced(P1,X,X) :-
%    meta(monadic,P1,2,(P1,monadic,P2)),
%    deduced(P2,X).

%{meta(chain,P1,2,(P1,P2,P3))} :-
%    pred(P2,2),
%    pred(P3,2),
%    order(P1,P2),
%    order(P1,P3),
%    deduced(P2,A,C),
%    deduced(P3,C,B).
%deduced(P1,A,B) :-
%    meta(chain,P1,2,(P1,P2,P3)),
%    deduced(P2,A,C),
%    deduced(P3,C,B).

%{meta(precon,P1,2,(P1,P2,P3))} :-
%    pred(P2,1),
%    pred(P3,2),
%    order(P1,P2),
%    order(P1,P3),
%    deduced(P2,A),
%    deduced(P3,A,B).
%
%{meta(postcon,P1,2,(P1,P2,P3))} :-
%    pred(P2,2),
%    pred(P3,1),
%    order(P1,P2),
%    order(P1,P3),
%    deduced(P2,A,B),
%    deduced(P3,B).

:-
    meta(Name,H1,A,(P1,P2,P3)),
    meta(Name,H2,A,(P1,P2,P3)),
    H1 != H2.

:- #count{ M,P1,P2,P3 : meta(M,P1,_,(P1,P2,P3)) } != N, size(N).

%:- deduced(P,X,Y),deduced(Q,X,Y),order(P,Q),skolem(P),skolem(Q).
%:- meta(N,P,A,(P,P2,P3)),meta(N,Q,A,(Q,P2,P3)),order(P,Q).

order(P,Q):-
    skolem(P),
    prim(Q).
order(P,Q):-
    pos_ex(P,_,_),
    prim(Q).
order(P,Q):-
    pos_ex(P,_,_),
    skolem(Q).
order(P,Q):-
    skolem(P),
    skolem(Q),
    P < Q.
