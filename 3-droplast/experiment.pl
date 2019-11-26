:-['../common'].

prim(empty/1).
prim(head/2).
prim(tail/2).
prim(myreverse/2).

examples(Pos,Neg):-
    findall(Atom,(pos_ex(A,B),Atom=..[f,A,B]),Pos),
    findall(Atom,(neg_ex(A,B),Atom=..[f,A,B]),Neg).

%% ---------- COMPILED BACKGROUND KNOWLEDGE ----------
term_gt(_A,_B):-
    false.
head(L,H):-
    ground(L),!,
    L=[H|_].
tail(L,T):-
    ground(L),!,
    L=[_|T].
myreverse(A,B):-
    ground(A),
    reverse(A,B).
concat([H|T],B,C):-!,append([H|T],[B],C).
concat(A,B,C):-
    ground(A),
    append([A],[B],C).
%% head([H|_],H).
%% tail([_|T],T).
equal(A,A).
empty([]).


test_atom(Atom):-
    call(Atom).