map([],[],_F).
map([A|As],[B|Bs],F):-
    call(F,A,B),
    map(As,Bs,F).

until(A,B,Cond,_Func):-
    call(Cond,A),!,A=B.
until(A,B,Cond,Func):-
    call(Func,A,C),
    until(C,B,Cond,Func).

ifthenelse(A,B,Cond,Then,Else):-
    (call(Cond,A) -> call(Then,A,B); call(Else,A,B)).

reduceback([Last],Last,_F).
reduceback([A|As],B,F):-
  reduceback(As,C,F),
  call(F,C,A,B).

inter(map,[map,[],[],_F],[]).
inter(map,[map,[A|As],[B|Bs],F],[[F,A,B],[map,As,Bs,F]]).

inter(until,[until,A,A,Cond,_F],[[Cond,A]]).
inter(until,[until,A,B,Cond,F],[[F,A,C],@term_gt(A,C),[until,C,B,Cond,F]]).

inter(ite,[ifthenelse,A,B,Cond,Then,_],[[Cond,A],[Then,A,B]]).
inter(ite,[ifthenelse,A,B,Cond,_,Else],[[not,Cond,A],[Else,A,B]]).

%% inter(reduceback,[reduceback,[A],A,_F],[]).
%% inter(reduceback,[reduceback,[A|As],B,F],[[reduceback,As,C,F],[F,C,A,B]]).

inter(ordered_until,[ordered_until,A,A,Cond,_F],[[Cond,A]]).
inter(ordered_until,[ordered_until,A,B,Cond,F],[[F,A,C],@term_gt(A,C),[ordered_until,C,B,Cond,F]]).
