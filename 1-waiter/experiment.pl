:- ['../common'].

prim(wants_tea/1).
prim(wants_coffee/1).
prim(at_end/1).
prim(pour_tea/2).
prim(pour_coffee/2).
prim(turn_cup_over/2).
prim(move_right/2).

examples(Pos,Neg):-
    findall(Atom,(pos_ex(A,B),Atom=..[f,A,B]),Pos),
    findall(Atom,(neg_ex(A,B),Atom=..[f,A,B]),Neg).

%% term_gt(s(RoboPos1,_,_),s(RoboPos2,_,_)):-
term_gt(S1,S2):-
    ground(S1),
    S1=s(RoboPos1,_,_),
    S2=s(RoboPos2,_,_),
    RoboPos2 > RoboPos1.

%% COMPILED BK
at_end(s(Pos,Pos,_Places)).

wants_tea(s(RoboPos,_EndPos,Places)):-
    memberchk(p(RoboPos,tea,_,_),Places).

wants_coffee(s(RoboPos,_EndPos,Places)):-
    memberchk(p(RoboPos,coffee,_,_),Places).

move_right(S1,S2):-
    ground(S1),
    S1=s(RoboPos1,EndPos,Places),
    S2=s(RoboPos2,EndPos,Places),
    nonvar(EndPos),
    RoboPos1<EndPos,
    RoboPos2 is RoboPos1+1.

turn_cup_over(S1,S2):-
    ground(S1),
    S1=s(RoboPos,EndPos,Places1),
    S2=s(RoboPos,EndPos,Places2),
    update(Places1,
        p(RoboPos,Pref,down,empty),
        p(RoboPos,Pref,up,empty),
        Places2).

pour_tea(S1,S2):-
    ground(S1),
    S1=s(RoboPos,EndPos,Places1),
    S2=s(RoboPos,EndPos,Places2),
    update(Places1,p(RoboPos,Pref,up,empty),p(RoboPos,Pref,up,tea),Places2).

pour_coffee(S1,S2):-
    ground(S1),
    S1=s(RoboPos,EndPos,Places1),
    S2=s(RoboPos,EndPos,Places2),
%% pour_coffee(s(RoboPos,EndPos,Places1),s(RoboPos,EndPos,Places2)):-
    update(Places1,p(RoboPos,Pref,up,empty),p(RoboPos,Pref,up,coffee),Places2).

update(L1,A,B,L2):-
    A=p(Pos,Pref,Direction,Status),
    Dummy =.. [dummy|L1],
    arg(Pos,Dummy,p(Pos,Pref,Direction,Status)),
    setarg(Pos,Dummy,B),
    Dummy =..[dummy|L2].

test_atom(Atom):-
    call(Atom).