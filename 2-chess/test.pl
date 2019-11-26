:-['../metagol_new'].
:-[experiment].
:-['../ibk'].
:-['data/pl/train-2-1'].


%% f(A,B):-map(A,B,f1).
%% f1(A,B):-ifthenelse(A,B,pawn,f2,hold).
%% f2(A,B):-ifthenelse(A,B,rank8,hold,f3).
%% f3(A,B):-until(A,B,rank8,forward).

f(A,B):-map(A,B,f1).
f1(A,B):-not_pawn(A),hold(A,B).
%% f1(A,B):-pawn(A),f2(A,B).
f1(A,B):-chess_until(A,B,rank8,forward).

%% err-pos-f([(p,p8,8,6),(n,n2,2,3),(p,p1,6,5),(p,p5,7,6),(r,r1,1,3),(k,k1,2,1),(p,p2,4,8),(p,p7,4,1)],[(p,p8,8,8),(n,n2,2,3),(p,p1,6,8),(p,p5,7,8),(r,r1,1,3),(k,k1,2,1),(p,p2,4,8),(p,p7,4,8)])


a:-
    examples(Pos,Neg),
    forall(member(Atom,Pos),
        (call(Atom)->true; writeln(err-pos-Atom))),
    forall(member(Atom,Neg),
        (not(call(Atom))->true; writeln(err-neg-Atom))).

b:-
    %% call(f([(p,p8,4,7),(r,r1,8,5),(n,n1,8,6)],[(p,p8,4,8),(r,r1,8,5),(n,n1,8,6)])).
    call(f([(p,p8,4,7)],[(p,p8,4,8)])).


%% f(A,B):-
%%   empty(A),
%%   empty(B).

%% f(A,B):-
%%   head(A,H1),
%%   pawn(H1),
%%   change_pos(H1,H2),
%%   head(B,H2),
%%   tail(A,T1),
%%   tail(B,T2),
%%   f(T1,T2).

%% f(A,B):-
%%   head(A,H1),
%%   not_pawn(H1),
%%   head(B,H1),
%%   tail(A,T1),
%%   tail(B,T2),
%%   f(T1,T2).

%% change_pos(A,B):-
%%   rank8(A),
%%   hold(A,B).
%% change_pos(A,B):-
%%   not_rank8(A),
%%   forward(A,C),
%%   change_pos(C,B).
