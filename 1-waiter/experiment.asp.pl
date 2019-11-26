pred(P,A):-
    meta(_,P,A,_),
    skolem(P).

:-
    pred(P,A1),
    pred(P,A2),
    A1 != A2.


%%deduced(P1,A,B) :-
%%    meta(ident,P1,2,(P1,P2)),
%%    deduced(P2,A,B).
%%
%%deduced(P1,A,B) :-
%%    meta(precon,P1,2,(P1,P2,P3)),
%%    deduced(P2,A),
%%    deduced(P3,A,B).
%%
%%deduced(P1,A,B) :-
%%    meta(postcon,P1,2,(P1,P2,P3)),
%%    deduced(P2,A,B),
%%    deduced(P3,B).
%%
%%deduced(P1,A,B) :-
%%    meta(chain,P1,2,(P1,P2,P3)),
%%    deduced(P2,A,C),
%%    deduced(P3,C,B).
%%
%%{meta(ident,P,2,(P,Q))} :-
%%    order(P,Q),
%%    deduced(Q,A,B).
%%
%%{meta(precon,P1,2,(P1,P2,P3))} :-
%%    pred(P2,1),
%%    pred(P3,2),
%%    order(P1,P2),
%%    order(P1,P3),
%%    deduced(P2,A),
%%    deduced(P3,A,B).
%%
%%{meta(postcon,P1,2,(P1,P2,P3))} :-
%%    pred(P2,2),
%%    pred(P3,1),
%%    order(P1,P2),
%%    order(P1,P3),
%%    deduced(P2,A,B),
%%    deduced(P3,B).
%%
%%{meta(chain,P1,2,(P1,P2,P3))} :-
%%    pred(P2,2),
%%    pred(P3,2),
%%    order(P1,P2),
%%    order(P1,P3),
%%    deduced(P2,A,C),
%%    deduced(P3,C,B).
%%

%% {meta(tailrec,P,2,(P,Q))} :-
%%     pred(Q,2),
%%     order(P,Q),
%%     deduced(Q,A,C),
%%     deduced(P,C,B).

:-
    N = #count{ M,P,A,Subs : meta(M,P,A,Subs)},
    size(Y),
    N > Y.

%% TODO add back
%% :-
%%    meta(Name,P1,A,()),
%%    meta(Name,P2,A,Subs),
%%    P1 != P2.

%% TODO DOUBLE CHECK
:-
    meta(_,P2,_,_),
    not meta(_,P1,_,_),
    skolem(P1),
    skolem(P2),
    P1 < P2.



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

%deduced(P,A,B) :-
%    meta(ifthenelse,P,2,(P,If,Then,Else)),
%    ifthenelse(A,B,If,Then,Else).
%
%deduced(P,A,B) :-
%    meta(until,P,2,(P,Cond,F)),
%    until(A,B,Cond,F).
%
%{meta(ifthenelse,P,2,(P,If,Then,Else))} :-
%    pred(If,1),
%    pred(Then,2),
%    pred(Else,2),
%    order(P,If),
%    order(P,Then),
%    order(P,Else),
%    Then != Else,
%    ifthenelse(A,B,If,Then,Else).
%
%{meta(until,P,2,(P,Cond,F))} :-
%    pred(Cond,1),
%    pred(F,2),
%    order(P,Cond),
%    order(P,F),
%    until(A,B,Cond,F).

%size(4).
%skolem(1).
%% skolem(2).
%% skolem(3).

%
%pos_ex(f,
%    "1,3,tea-down-empty,coffee-down-empty",
%    "3,3,tea-up-tea,coffee-up-coffee").
%
%pos_ex(f,
%    "1,3,tea-down-empty,coffee-down-empty",
%    "3,3,tea-up-tea,coffee-up-coffee").
%
%pos_ex(f,
%    "1,4,tea-down-empty,coffee-down-empty,tea-down-empty",
%    "4,4,tea-up-tea,coffee-up-coffee,tea-up-tea").
%
%pos_ex(f,
%    "1,3,tea-down-empty,tea-down-empty",
%    "3,3,tea-up-tea,tea-up-tea").
%
%pos_ex(f,
%    "1,2,tea-down-empty",
%    "2,2,tea-up-tea").
%
%pos_ex(f,
%    "1,5,tea-down-empty,coffee-down-empty,tea-down-empty,tea-down-empty",
%    "5,5,tea-up-tea,coffee-up-coffee,tea-up-tea,tea-up-tea").
%
%
%%% pos_ex(f,
%%%     "1,6,tea-down-empty,coffee-down-empty,tea-down-empty,tea-down-empty,coffee-down-empty",
%%%     "6,6,tea-up-tea,coffee-up-coffee,tea-up-tea,tea-up-tea,coffee-up-coffee").
%
%%% pos_ex(f,
%%%     "1,6,tea-down-empty,coffee-down-empty,tea-down-empty,tea-down-empty,tea-down-empty",
%%%     "6,6,tea-up-tea,coffee-up-coffee,tea-up-tea,tea-up-tea,tea-up-tea").
%
%
%neg_ex(f,
%    "1,2,tea-down-empty",
%    "2,2,tea-up-coffee").
%
%neg_ex(f,
%    "1,3,coffee-down-empty,coffee-down-empty",
%    "1,3,coffee-up-tea,coffee-down-empty").
%
%neg_ex(f,
%    "1,3,coffee-down-empty,coffee-down-empty",
%    "3,3,coffee-up-tea,coffee-down-tea").
%
%neg_ex(f,
%    "1,3,coffee-down-empty,coffee-down-empty",
%    "3,3,coffee-down-empty,coffee-down-empty").
%
%neg_ex(f,
%    "1,2,tea-down-empty",
%    "2,2,tea-down-empty").
%
%neg_ex(f,
%    "1,2,coffee-down-empty",
%    "2,2,coffee-down-empty").
