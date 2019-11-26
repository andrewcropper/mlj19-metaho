:-['../common'].

prim(forward/2).
prim(rank8/1).
prim(not_rank8/1).
prim(pawn/1).
prim(not_pawn/1).
prim(hold/2).
prim(head/2).
prim(tail/2).
prim(empty/1).

examples(Pos,Neg):-
    findall(Atom,(pos_ex(A,B),Atom=..[f,A,B]),Pos),
    findall(Atom,(neg_ex(A,B),Atom=..[f,A,B]),Neg).

term_gt(S1,S2):-
    ground(S1),
    S1=(p,Id,_,Y1),
    S2=(p,Id,_,Y2),
    Y2 > Y1.
%% term_gt((p,Id,_,Y1),(p,Id,_,Y2)):-
  %% Y2 > Y1.

rank8((_Piece,_Id,_File,8)).
not_rank8(A):-
    \+rank8(A).
pawn((p,_Id,_File,_Rank)).
not_pawn(A):-
    \+pawn(A).
head(L,H):-
    ground(L),
    L=[H|_].
%% head([A|_],A).
tail(L,T):-
    ground(L),
    L=[_|T].
empty([]).
hold(A,B):-
  A=B.
%% forward((Type,Id,X,Y1),(Type,Id,X,Y2)):-
forward(S1,S2):-
    ground(S1),
    S1=(Type,Id,X,Y1),
    S2=(Type,Id,X,Y2),
    Y1 < 8,
    Y2 is Y1+1.

test_atom(Atom):-
    call(Atom).