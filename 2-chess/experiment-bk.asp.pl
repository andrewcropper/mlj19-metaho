dyadic_bk(forward,A,B):-
    state(A),
    &pyForward[A](B).
prim(forward).
pred(forward,2).

monadic_bk(rank8,L) :-
    state(L),
    &pyRank8[L,1]().
prim(rank8).
pred(rank8,1).

monadic_bk(not_rank8,L) :-
    state(L),
    &pyRank8[L,0]().
prim(not_rank8).
pred(not_rank8,1).

monadic_bk(pawn,L) :-
    state(L),
    &pyPawn[L,1]().
prim(pawn).
pred(pawn,1).

monadic_bk(not_pawn,L) :-
    state(L),
    &pyPawn[L,0]().
prim(not_pawn).
pred(not_pawn,1).

dyadic_bk(hold,A,A):-
    state(A),
    &pyPiece[A]().
prim(hold).
pred(hold,2).

dyadic_bk(head,L,H):-
    state(L),
    &pyHead[L](H).
prim(head).
pred(head,2).

dyadic_bk(tail,L,T) :-
    state(L),
    &pyTail[L](T).
prim(tail).
pred(tail,2).

monadic_bk(empty,L) :-
    state(L),
    &pyEmpty[L]().
prim(empty).
pred(empty,1).

state(X) :-
    pos_ex(_,X,_).
state(X) :-
    neg_ex(_,X,_).
state(Y) :-
    pos_ex(_,_,Y).
state(Y) :-
    neg_ex(_,_,Y).
state(X):-
    deduced(_,X,_).
state(Y):-
    deduced(_,_,Y).

deduced(P,X,Y) :-
    dyadic_bk(P,X,Y).

deduced(P,X) :-
    monadic_bk(P,X).

:- pos_ex(P,X,Y), not deduced(P,X,Y).
:- neg_ex(P,X,Y), deduced(P,X,Y).
