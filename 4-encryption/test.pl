:- use_module(library(time)).
%% :- ['../metagol_new'].
:- ['data/pl/test-1-8'].
:- ['programs/pl/new-1-8'].
:-[experiment].



%% f(A,B):-map(A,B,f1).
%% f1(A,B):-char_to_int(A,C),my_prec(C,D),int_to_char(D,B).

a:-
    examples(Pos,Neg),
    forall(member(Atom,Pos),
        (call(Atom)->true; writeln(err-pos-Atom))),
    forall(member(Atom,Neg),
        (not(call(Atom))->true; writeln(err-neg-Atom))).