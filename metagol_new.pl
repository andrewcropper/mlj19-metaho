%% This is a copyrighted file under the BSD 3-clause licence, details of which can be found in the root directory.

:- module(metagol,[learn/2,learn/3,learn_seq/2,pprint/1,op(950,fx,'@')]).

:- user:use_module(library(lists)).

:- use_module(library(lists)).
:- use_module(library(apply)).
:- use_module(library(pairs)).

:- dynamic
    functional/0,
    unfold_program/0,
    print_ordering/0,
    min_clauses/1,
    max_clauses/1,
    max_inv_preds/1,
    metarule_next_id/1,
    user:inter/4,
    user:prim/1,
    user:primcall/2.

:- discontiguous
    user:metarule/8,
    user:metarule_init/7,
    user:prim/1,
    user:primcall/2.

default(min_clauses(1)).
default(max_clauses(6)).
default(metarule_next_id(1)).
default(max_inv_preds(10)).

learn(Pos1,Neg1):-
    learn(Pos1,Neg1,Prog),
    pprint(Prog).

learn(Pos1,Neg1,Prog):-
    maplist(atom_to_list,Pos1,Pos2),
    maplist(atom_to_list,Neg1,Neg2),
    %% writeln('pos1'),
    %% maplist(writeln,Pos1),
    %% writeln('pos2'),
    %% maplist(writeln,Pos2),
    proveall(Pos2,Sig,Prog),
    nproveall(Neg2,Sig,Prog),
    is_functional(Pos2,Sig,Prog).

learn_seq(Seq,Prog):-
    maplist(learn_task,Seq,Progs),
    flatten(Progs,Prog).

learn_task(Pos/Neg,Prog):-
    learn(Pos,Neg,Prog),!,
    maplist(assert_clause,Prog),
    assert_prog_prims(Prog).

proveall(Atoms,Sig,Prog):-
    target_predicate(Atoms,P/A),
    format('% learning ~w\n',[P/A]),
    iterator(MaxN),
    format('% clauses: ~d\n',[MaxN]),
    invented_symbols(MaxN,P/A,Sig),
    prove_examples(Atoms,Sig,_Sig,MaxN,0,_N,[],Prog).

update_depth(Depth):-
    retractall(metagol:max_clauses(_)),
    assert(metagol:max_clauses(Depth)).

update_timeout(Depth):-
    depth_time_interval(Interval),
    MaxTime is round((2**(Depth-1) * Interval)),
    retractall(max_time(_)),
    assert(max_time(MaxTime)).%% learn_aux(Task,false-Task).

prove_examples([],_FullSig,_Sig,_MaxN,N,N,Prog,Prog).
prove_examples([Atom|Atoms],FullSig,Sig,MaxN,N1,N2,Prog1,Prog2):-
    prove_deduce([Atom],FullSig,Prog1),!,
    is_functional([Atom],Sig,Prog1),
    prove_examples(Atoms,FullSig,Sig,MaxN,N1,N2,Prog1,Prog2).
prove_examples([Atom1|Atoms],FullSig,Sig,MaxN,N1,N2,Prog1,Prog2):-
    add_empty_path(Atom1,Atom2),
    prove([Atom2],FullSig,Sig,MaxN,N1,N3,Prog1,Prog3),
    prove_examples(Atoms,FullSig,Sig,MaxN,N3,N2,Prog3,Prog2).

prove_deduce(Atoms1,Sig,Prog):-
    maplist(add_empty_path,Atoms1,Atoms2),
    length(Prog,N),
    prove(Atoms2,Sig,_,N,N,N,Prog,Prog).

prove([],_FullSig,_Sig,_MaxN,N,N,Prog,Prog).
prove([Atom|Atoms],FullSig,Sig,MaxN,N1,N2,Prog1,Prog2):-
    prove_aux(Atom,FullSig,Sig,MaxN,N1,N3,Prog1,Prog3),
    prove(Atoms,FullSig,Sig,MaxN,N3,N2,Prog3,Prog2).

prove_aux('@'(Atom),_FullSig,_Sig,_MaxN,N,N,Prog,Prog):-!,
    %% trace,
    user:call(Atom).

%% prove primitive atom
prove_aux(p(prim,P,_A,Args,_Atom,_Path),_FullSig,_Sig,_MaxN,N,N,Prog,Prog):-
    %% writeln(P),
    user:primcall(P,Args).

%% disprove a prim
prove_aux(p(_,NegP,_A,Args,_Atom,_Path),_FullSig,_Sig,_MaxN,N,N,Prog,Prog):-
    nonvar(NegP),
    NegP=not,!,
    Args=[P|PArgs],
    \+user:primcall(P,PArgs).

%% use interpreted BK - can we skip this if no interpreted_bk?
%% only works if interpreted/2 is below the corresponding definition
prove_aux(p(inv,_P,_A,_Args,Atom,Path),FullSig,Sig,MaxN,N1,N2,Prog1,Prog2):-
    user:inter(_,Atom,Body,Path),
    prove(Body,FullSig,Sig,MaxN,N1,N2,Prog1,Prog2).

%% use existing abduction
prove_aux(p(inv,P,A,_Args,Atom,Path),FullSig,Sig1,MaxN,N1,N2,Prog1,Prog2):-
    select_lower(P,A,FullSig,Sig1,Sig2),
    member(sub(Name,P,A,MetaSub,PredTypes),Prog1),
    user:metarule_init(Name,MetaSub,PredTypes,Atom,Body1,Recursive,[Atom|Path]),
    (Recursive==true -> \+memberchk(Atom,Path); true),
    prove(Body1,FullSig,Sig2,MaxN,N1,N2,Prog1,Prog2).

%% new abduction
prove_aux(p(inv,P,A,_Args,Atom,Path),FullSig,Sig1,MaxN,N1,N2,Prog1,Prog2):-
    (N1 == MaxN -> fail; true),
    bind_lower(P,A,FullSig,Sig1,Sig2),
    user:metarule(Name,MetaSub,PredTypes,Atom,Body1,FullSig,Recursive,[Atom|Path]),
    (Name=tailrec -> \+memberchk(sub(tailrec,P,A,_,_),Prog1); true),
    (Recursive==true -> \+memberchk(Atom,Path); true),
    check_new_metasub(Name,P,A,MetaSub,Prog1),
    succ(N1,N3),
    prove(Body1,FullSig,Sig2,MaxN,N3,N2,[sub(Name,P,A,MetaSub,PredTypes)|Prog1],Prog2).

add_empty_path([P|Args],p(inv,P,A,Args,[P|Args],[])):-
    size(Args,A).

select_lower(P,A,FullSig,_Sig1,Sig2):-
    nonvar(P),!,
    append(_,[sym(P,A,_)|Sig2],FullSig),!.

select_lower(P,A,_FullSig,Sig1,Sig2):-
    append(_,[sym(P,A,U)|Sig2],Sig1),
    (var(U)-> !,fail;true ).

bind_lower(P,A,FullSig,_Sig1,Sig2):-
    nonvar(P),!,
    append(_,[sym(P,A,_)|Sig2],FullSig),!.

bind_lower(P,A,_FullSig,Sig1,Sig2):-
    append(_,[sym(P,A,U)|Sig2],Sig1),
    (var(U)-> U = 1,!;true).

check_new_metasub(Name,P,A,MetaSub,Prog):-
    memberchk(sub(Name,P,A,_,_),Prog),!,
    last(MetaSub,X),
    when(ground(X),\+memberchk(sub(Name,P,A,MetaSub,_),Prog)).
check_new_metasub(_Name,_P,_A,_MetaSub,_Prog).

size([],0) :-!.
size([_],1) :-!.
size([_,_],2) :-!.
size([_,_,_],3) :-!.
size(L,N):- !,
  length(L,N).

nproveall([],_PS,_Prog):- !.
nproveall([Atom|Atoms],PS,Prog):-
    \+ prove_deduce([Atom],PS,Prog),
    nproveall(Atoms,PS,Prog).

iterator(N):-
    get_option(min_clauses(MinN)),
    get_option(max_clauses(MaxN)),
    between(MinN,MaxN,N).

target_predicate([[P|Args]|_],P/A):-
    length(Args,A).

invented_symbols(MaxClauses,P/A,[sym(P,A,_U)|Sig]):-
    NumSymbols is MaxClauses-1,
    get_option(max_inv_preds(MaxInvPreds)),
    M is min(NumSymbols,MaxInvPreds),
    findall(sym(InvSym,_Artiy,_Used),(between(1,M,I),atomic_list_concat([P,'_',I],InvSym)),Sig).

pprint(Prog1):-
    map_list_to_pairs(arg(2),Prog1,Pairs),
    keysort(Pairs,Sorted),
    pairs_values(Sorted,Prog2),
    maplist(metasub_to_clause_list,Prog2,Prog3),
    (get_option(unfold_program) -> unfold_program(Prog3,Prog4); Prog3=Prog4),
    maplist(remove_orderings,Prog4,Prog5),
    maplist(clause_list_to_clause,Prog5,Prog6),
    maplist(pprint_clause,Prog6).

remove_orderings([],[]).
remove_orderings(['@'(_H)|T],Out):-!,
    remove_orderings(T,Out).
remove_orderings([H|T],[H|Out]):-
    remove_orderings(T,Out).

pprint_clause(Clause):-
    numbervars(Clause,0,_),
    format('~q.~n',[Clause]).

clause_list_to_clause([H|B1],Clause):-
    list_to_atom(H,Head),
    (B1 = [] ->Clause=Head;(
        maplist(list_to_atom,B1,B2),
        list_to_clause(B2,B3),
        Clause = (Head:-B3))).

%% construct clause is horrible and needs refactoring
metasub_to_clause_list(sub(Name,_,_,MetaSub,_),[HeadList|BodyAsList2]):-
    user:metarule_init(Name,MetaSub,_,HeadList,BodyAsList1,_,_),
    add_path_to_body(BodyAsList2,_,BodyAsList1,_).

list_to_clause([Atom],Atom):-!.
list_to_clause([Atom|T1],(Atom,T2)):-!,
    list_to_clause(T1,T2).

list_to_atom(AtomList,Atom):-
    Atom =..AtomList.
atom_to_list(Atom,AtomList):-
    Atom =..AtomList.

is_functional(Atoms,Sig,Prog):-
    (get_option(functional) -> is_functional_aux(Atoms,Sig,Prog); true).
is_functional_aux([],_Sig,_Prog).
is_functional_aux([Atom|Atoms],Sig,Prog):-
    user:func_test(Atom,Sig,Prog),
    is_functional_aux(Atoms,Sig,Prog).

get_option(Option):-call(Option), !.
get_option(Option):-default(Option).

set_option(Option):-
    functor(Option,Name,Arity),
    functor(Retract,Name,Arity),
    retractall(Retract),
    assert(Option).

gen_metarule_id(Id):-
    get_option(metarule_next_id(Id)),
    succ(Id,IdNext),
    set_option(metarule_next_id(IdNext)).

user:term_expansion(interpreted(P/A),L2):-
    functor(Head,P,A),
    findall((Head:-Body),user:clause(Head,Body),L1),
    maplist(convert_to_interpreted,L1,L2).

%% convert_to_interpreted((Head:-true),metagol:(interpreted_bk(HeadAsList,[]))):-!,
%%     ho_atom_to_list(Head,HeadAsList).
%% convert_to_interpreted((Head:-Body),metagol:(interpreted_bk(HeadAsList,BodyList2))):-
%%     ho_atom_to_list(Head,HeadAsList),
%%     clause_to_list(Body,BodyList1),
%%     maplist(ho_atom_to_list,BodyList1,BodyList2).



user:term_expansion(inter(Name,Head,Body1),[user:inter(Name,Head,Body2,Path)]):-
    add_path_to_body(Body1,Path,Body2,_).

user:term_expansion(prim(P/A),[user:prim(P/A),user:(primcall(P,Args):-user:Call)]):-
    functor(Call,P,A),
    Call =.. [P|Args].

user:term_expansion(metarule(MetaSub,Clause),Asserts):-
    get_asserts(_Name,MetaSub,Clause,_,_PS,Asserts).
user:term_expansion(metarule(Name,MetaSub,Clause),Asserts):-
    get_asserts(Name,MetaSub,Clause,_,_PS,Asserts).
user:term_expansion((metarule(MetaSub,Clause):-Body),Asserts):-
    get_asserts(_Name,MetaSub,Clause,Body,_PS,Asserts).
user:term_expansion((metarule(Name,MetaSub,Clause):-Body),Asserts):-
    get_asserts(Name,MetaSub,Clause,Body,_PS,Asserts).
user:term_expansion((metarule(Name,MetaSub,Clause,PS):-Body),Asserts):-
    get_asserts(Name,MetaSub,Clause,Body,PS,Asserts).

get_asserts(Name,MetaSub,Clause1,MetaBody,PS,[MRule,metarule_init(AssertName,MetaSub,PredTypes,Head,Body3,Recursive,Path)]):-
    Clause1 = (Head:-Body1),
    Head = [P|_],
    is_recursive(Body1,P,Recursive),
    add_path_to_body(Body1,Path,Body3,PredTypes),
    %% Clause2 = (Head:-Body3),
    (var(Name)->gen_metarule_id(AssertName);AssertName=Name),
    (var(MetaBody) ->
        MRule = metarule(AssertName,MetaSub,PredTypes,Head,Body3,PS,Recursive,Path);
        MRule = (metarule(AssertName,MetaSub,PredTypes,Head,Body3,PS,Recursive,Path):-MetaBody)).

%% %% add_path_to_body
%% get_asserts(Name,MetaSub,Clause1,MetaBody,PS,[MRule,metarule_init(AssertName,MetaSub,PredTypes,Clause2,Recursive,Path)]):-
%%     Clause1 = (Head:-Body1),
%%     Head = [P|_],
%%     is_recursive(Body1,P,Recursive),
%%     add_path_to_body(Body1,Path,Body3,PredTypes),
%%     Clause2 = (Head:-Body3),
%%     (var(Name)->gen_metarule_id(AssertName);AssertName=Name),
%%     (var(MetaBody) ->
%%         MRule = metarule(AssertName,MetaSub,PredTypes,Clause2,PS,Recursive,Path);
%%         MRule = (metarule(AssertName,MetaSub,PredTypes,Clause2,PS,Recursive,Path):-MetaBody)).

is_recursive([],_,false).
is_recursive([[Q|_]|_],P,true):-
    Q==P,!.
is_recursive([_|T],P,Res):-
    is_recursive(T,P,Res).

add_path_to_body([],_Path,[],[]).
add_path_to_body(['@'(Atom)|Atoms],Path,['@'(Atom)|Rest],Out):-
    add_path_to_body(Atoms,Path,Rest,Out).
add_path_to_body([[P|Args]|Atoms],Path,[p(PType,P,A,Args,[P|Args],Path)|Rest],[PType|Out]):-
    size(Args,A),
    add_path_to_body(Atoms,Path,Rest,Out).

assert_prog(Prog):-
    maplist(assert_clause,Prog).

assert_clause(Sub):-
    metasub_to_clause_list(Sub,ClauseAsList),
    clause_list_to_clause(ClauseAsList,Clause),
    assert(user:Clause).

assert_prog_prims(Prog):-
    findall(P/A,(member(sub(_Name,P,A,_MetaSub,_PredTypes),Prog)),Prims),!,
    list_to_set(Prims,PrimSet),
    maplist(assert_prim,PrimSet).

assert_prim(Prim):-
    \+ user:prim(Prim),
    prim_asserts(Prim,Asserts),
    maplist(assertz,Asserts).

assert_prims2([]).
assert_prims2([Prim|T]):-
    prim_asserts(Prim,Asserts),
    maplist(assertz,Asserts),
    assert_prims2(T).

retract_prim(Prim):-
    Prim = P/_,
    retractall(user:prim(Prim)),
    retractall(user:primcall(P,_)).

prim_asserts(P/A,[user:prim(P/A), user:(primcall(P,Args):-user:Call)]):-
    functor(Call,P,A),
    Call =.. [P|Args].

clause_to_list((Atom,T1),[Atom|T2]):-
    clause_to_list(T1,T2).
clause_to_list(Atom,[Atom]):- !.

ho_atom_to_list(Atom,T):-
    Atom=..AtomList,
    AtomList = [call|T],!.
ho_atom_to_list(Atom,AtomList):-
    Atom=..AtomList.

rename_aux(P/0,P/0):-!.
rename_aux(P/A,P/A):-
  user:prim(P/A),!.
rename_aux(P/A,Q/A):-
  atomic_list_concat([_X,Y],'_',P),!,
  atomic_list_concat(['inv_',Y],Q).
rename_aux(_P/A,inv/A).







atom_pred([P|Args],P/A):-
    length(Args,A).

clause_head_pred([Head|_Body],P/A):-
    atom_pred(Head,P/A).

prog_head_preds(Prog,Preds):-
    findall(P/A,(member(Clause,Prog),clause_head_pred(Clause,P/A)),Preds).

clause_body_preds(Clause,Preds):-
    Clause=[_Head|Body],
    findall(P/A,(
        member(Atom,Body),
        atom_pred(Atom,P/A)
        ),Preds).

prog_body_preds(Prog,Preds):-
    findall(P/A,(
        member(Clause,Prog),
        clause_body_preds(Clause,ClauseBodypreds),
        member(P/A,ClauseBodypreds)
        ),Preds).

appears_exactly_once(X,L1):-
    selectchk(X,L1,L2),
    \+memberchk(X,L2).

% merge C1 with C2
fold_clause(C1,C2,P/A,D):-
    C1 = [Head|C1Tail],
    Head=[P|Args1],
    length(Args1,A),
    append(Pre,[Head|Post],C2),
    append([Pre,C1Tail,Post],D).

fold_program(Prog1,Prog2):-
    select(C1,Prog1,Prog3),

    % check that the head predbol does not appear as another head (i.e. is not a disjunction)
    clause_head_pred(C1,P/A),
    prog_head_preds(Prog3,ProgHeadpreds),
    \+memberchk(P/A,ProgHeadpreds),

    % check that the clause is not recursive
    clause_body_preds(C1,C1Bodypreds),
    \+memberchk(P/A,C1Bodypreds),

    % check that head pred appears exactly once in the body of the program
    prog_body_preds(Prog3,ProgBodypreds),
    appears_exactly_once(P/A,ProgBodypreds),

    % find the clause in which the head pred appears in the body
    select(C2,Prog3,Prog4),
    clause_body_preds(C2,C2BodyPreds),
    memberchk(P/A,C2BodyPreds),

    % merge the two clauses
    fold_clause(C1,C2,P/A,D),!,
    fold_program([D|Prog4],Prog2).
fold_program(Prog,Prog).

%% myprint(Clause):-
%%     numbervars(Clause,0,_),
%%     writeln(Clause).

%% :-
%%     c(Prog1),
%%     fold_program(Prog1,Prog2),
%%     maplist(myprint,Prog2).