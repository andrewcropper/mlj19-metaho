dyadic_bk(head,L,H):-
    state(L),
    &pyHead[L](H).
prim(head).
pred(head,2).

dyadic_bk(tail,L,T) :-
    state(L),
    &pyTail[L](T).
prim(tail).
pred(tail,2).

monadic_bk(empty,L) :-
    state(L),
    &pyEmpty[L]().
prim(empty).
pred(empty,1).

dyadic_bk(char_to_int,L,H):-
    state(L),
    char_to_int(L,H).
%dyadic_bk(char_to_int,L,H):-
%    state(L),
%    &char_to_int[L](H).
prim(char_to_int).
pred(char_to_int,2).

dyadic_bk(int_to_char,L,H):-
    state(L),
    int_to_char(L,H).
%dyadic_bk(int_to_char,L,H):-
%    state(L),
%    &int_to_char[L](H).
prim(int_to_char).
pred(int_to_char,2).

dyadic_bk(my_succ,L,H):-
    state(L),
    my_succ(L,H).
%dyadic_bk(int_to_char,L,H):-
%    state(L),
%    &int_to_char[L](H).
prim(my_succ).
pred(my_succ,2).

dyadic_bk(my_prec,L,H):-
    state(L),
    my_prec(L,H).
%dyadic_bk(int_to_char,L,H):-
%    state(L),
%    &int_to_char[L](H).
prim(my_prec).
pred(my_prec,2).


state(X) :-
    pos_ex(_,X,_).
state(X) :-
    neg_ex(_,X,_).
state(Y) :-
    pos_ex(_,_,Y).
state(Y) :-
    neg_ex(_,_,Y).
state(X):-
    deduced(_,X,_).
state(Y):-
    deduced(_,_,Y).

deduced(P,X,Y) :-
    dyadic_bk(P,X,Y).

deduced(P,X) :-
    monadic_bk(P,X).

:- pos_ex(P,X,Y), not deduced(P,X,Y).
:- neg_ex(P,X,Y), deduced(P,X,Y).


char_to_int("'a'","0").
char_to_int("'b'","1").
char_to_int("'c'","2").
char_to_int("'d'","3").
char_to_int("'e'","4").
char_to_int("'f'","5").
char_to_int("'g'","6").
char_to_int("'h'","7").
char_to_int("'i'","8").
char_to_int("'j'","9").
%char_to_int("'k'","10").
%char_to_int("'l'","11").
%char_to_int("'m'","12").
%char_to_int("'n'","13").
%char_to_int("'o'","14").
%char_to_int("'p'","15").
%char_to_int("'q'","16").
%char_to_int("'r'","17").
%char_to_int("'s'","18").
%char_to_int("'t'","19").
%char_to_int("'u'","20").
%char_to_int("'v'","21").
%char_to_int("'w'","22").
%char_to_int("'x'","23").
%char_to_int("'y'","24").
%char_to_int("'z'","25").

int_to_char("0","'a'").
int_to_char("1","'b'").
int_to_char("2","'c'").
int_to_char("3","'d'").
int_to_char("4","'e'").
int_to_char("5","'f'").
int_to_char("6","'g'").
int_to_char("7","'h'").
int_to_char("8","'i'").
int_to_char("9","'j'").
%int_to_char("10","'k'").
%int_to_char("11","'l'").
%int_to_char("12","'m'").
%int_to_char("13","'n'").
%int_to_char("14","'o'").
%int_to_char("15","'p'").
%int_to_char("16","'q'").
%int_to_char("17","'r'").
%int_to_char("18","'s'").
%int_to_char("19","'t'").
%int_to_char("20","'u'").
%int_to_char("21","'v'").
%int_to_char("22","'w'").
%int_to_char("23","'x'").
%int_to_char("24","'y'").
%int_to_char("25","'z'").

%my_succ("0","1").
%my_succ("1","2").
%my_succ("2","3").
%my_succ("3","4").
%my_succ("4","5").
%my_succ("5","6").
%my_succ("6","7").
%my_succ("7","8").
%my_succ("8","9").
%my_succ("9","10").
%my_succ("10","11").
%my_succ("11","12").
%my_succ("12","13").
%my_succ("13","14").
%my_succ("14","15").
%my_succ("15","16").
%my_succ("16","17").
%my_succ("17","18").
%my_succ("18","19").
%my_succ("19","20").
%my_succ("20","21").
%my_succ("21","22").
%my_succ("22","23").
%my_succ("23","24").
%my_succ("24","25").
%my_succ("25","0").

my_succ("0","1").
my_succ("1","2").
my_succ("2","3").
my_succ("3","4").
my_succ("4","5").
my_succ("5","6").
my_succ("6","7").
my_succ("7","8").
my_succ("8","9").
my_succ("9","0").
%my_succ("10","11").
%my_succ("11","12").
%my_succ("12","0").

my_prec(X,Y):-
    my_succ(Y,X).
