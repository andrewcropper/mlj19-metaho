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

dyadic_bk(reverse,L,T) :-
    state(L),
    &pyReverse[L](T).
prim(reverse).
pred(reverse,2).

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
