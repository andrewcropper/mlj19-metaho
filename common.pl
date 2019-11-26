:-['ibk'].

learn:-
    timeit(learn_aux).

learn_aux:-
    examples(Pos,Neg),
    max_time(MaxTime),
    catch(call_with_time_limit(MaxTime,learn(Pos,Neg,Prog)),time_limit_exceeded,false),!,
    pprint(Prog).
learn_aux.

do_test:-
    current_predicate(f/2),!,
    examples(Pos,Neg),
    forall(member(Atom,Pos),(test_atom_aux(Atom) -> writeln(1); writeln(0))),
    forall(member(Atom,Neg),(test_atom_aux(Atom) -> writeln(0); writeln(1))).

do_test:-
    examples(Pos,Neg),
    forall(member(Atom,Pos),writeln(0)),
    forall(member(Atom,Neg),writeln(1)).

test_atom_aux(Atom):-
    catch(test_atom(Atom),_,false).

timeit(Goal):-
    get_time(T1),
    call(Goal),
    get_time(T2),
    Duration is T2-T1,
    format('%time,~f\n',[Duration]).

%% METAGOL SETTINGS
metagol:max_clauses(10).
%% max_time(60). % 1 minute
%% max_time(120). % 2 minutes
%max_time(600). % 10 minutes
max_time(60). % 1 minutes  %%% FIXME

%% METARULES
metarule(monadic,[P,Q],([P,A,A]:-[[Q,A]])).
metarule(chain,[P,Q,R],([P,A,B]:-[[Q,A,C],[R,C,B]])).
metarule(precon,[P,Q,R],([P,A,B]:-[[Q,A],[R,A,B]])).
metarule(postcon,[P,Q,R],([P,A,B]:-[[Q,A,B],[R,B]])).
metarule(curry1,[P,Q,Func],([P,A,B]:-[[Q,A,B,Func]])).
metarule(curry2,[P,Q,Cond,Func],([P,A,B]:-[[Q,A,B,Cond,Func]])).
metarule(curry3,[P,Q,Cond,Then,Else],([P,A,B]:-[[Q,A,B,Cond,Then,Else]])).
metarule(tailrec,[P,Q],([P,A,B]:-[[Q,A,C],[P,C,B]])).
metarule(dident,[P,Q,R],([P,A,B]:-[[Q,A,B],[R,A,B]])):-freeze(Q,freeze(R,Q\=R)).
metarule(inverse,[P,Q],([P,A,B]:-[[Q,B,A]])).
