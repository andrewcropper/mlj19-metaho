:-['../metagol_new'].
:- [experiment].
%% :-[ibk].
:- ['data/pl/train-2-1'].

%% f(A,B):-until(A,B,at_end,f_1).
%% f_1(A,B):-turn_cup_over(A,C),f_2(C,B).
%% f_2(A,B):-f_3(A,C),move_right(C,B).
%% f_3(A,B):-wants_tea(A),pour_tea(A,B).
%% f_3(A,B):-wants_coffee(A),pour_coffee(A,B).

%% f(A,B):-until(A,B,at_end,f_1).
%% f_1(A,B):-turn_cup_over(A,C),f_2(C,B).
%% f_2(A,B):-f_3(A,C),move_right(C,B).
%% f_3(A,B):-ifthenelse(A,B,wants_tea,pour_tea,pour_coffee).


%% Q. Does until work? A. Seems to.
%% Q. Does ifthenelse work?

%% move_right(
    %% s(1, 4, [p(1, coffee, up, coffee), p(2, coffee, down, empty), p(3, coffee, down, empty)]), s
    %% (4, 4, [p(1, coffee, up, coffee), p(2, coffee, up, coffee), p(3, coffee, up, coffee)])) ? creep


a:-
    examples(Pos,Neg),
    forall(member(Atom,Pos),
        (call(Atom)->true; writeln(err-pos-Atom))),
    forall(member(Atom,Neg),
        (not(call(Atom))->true; writeln(err-neg-Atom))).

%% testing whether until works
b:-
    S1= s(1, 8, [p(1, coffee, up, coffee)]),
    S2= s(8, 8, [p(1, coffee, up, coffee)]),
    Pos = [f(S1,S2)],
    learn(Pos,[]).

%% testing whether ifthenelse works
c:-
    A1= s(1, 5, [p(1,coffee,up,empty)]),
    B1= s(1, 5, [p(1,coffee,up,coffee)]),
    A2= s(1, 5, [p(1,tea,up,empty)]),
    B2= s(1, 5, [p(1,tea,up,tea)]),
    Pos = [f(A1,B1),f(A2,B2)],
    learn(Pos,[]).
    %% writeln(Prog).