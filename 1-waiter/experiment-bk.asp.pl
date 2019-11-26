dyadic_bk(move_right,A,B):-
    state(A),
    &move_right[A](B).

dyadic_bk(turn_cup_over,A,B):-
    state(A),
    &turn_cup_over[A](B).

dyadic_bk(pour_tea,A,B):-
    state(A),
    &pour_tea[A](B).

dyadic_bk(pour_coffee,A,B):-
    state(A),
    &pour_coffee[A](B).

monadic_bk(wants_tea,A):-
    state(A),
    &wants_tea[A]().

monadic_bk(wants_coffee,A):-
    state(A),
    &wants_coffee[A]().

monadic_bk(at_end,A):-
    state(A),
    &at_end[A]().

prim(turn_cup_over).
prim(pour_tea).
prim(pour_coffee).
prim(move_right).
prim(at_end).
prim(wants_tea).
prim(wants_coffee).

pred(turn_cup_over,2).
pred(pour_tea,2).
pred(pour_coffee,2).
pred(move_right,2).
pred(at_end,1).
pred(wants_tea,1).
pred(wants_coffee,1).

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

deduced(P,A) :-
    monadic_bk(P,A).

deduced(P,A,B) :-
    dyadic_bk(P,A,B).

:- pos_ex(P,X,Y), not deduced(P,X,Y).
:- neg_ex(P,X,Y), deduced(P,X,Y).

