:- use_module(library(clpfd)).
:- use_module(library(http/http_client)).
:- use_module(library(http/http_json)).
female(mary). female(liz). female(mia). female(tina). female(ann). female(sue).% all females
male(mike). male(jack). male(fred). male(tom). male(joe). male(jim). % all males
parent(mary, mia). parent(mary, fred). parent(mary, tina). % all childern of mary
parent(mike, mia). parent(mike, fred). parent(mike, tina). % all children of mike
parent(liz, tom). parent(liz, joe). % allchildern of liz
parent(jack, tom). parent(jack, joe). % all childern of jack
parent(mia, ann). % all childern of mia
parent(tina, sue). parent(tina, jim). % all childern of tina
parent(tom, sue). parent(tom, jim). % all childern of tom
mother(X, Y) :- female(X), parent(X, Y).
father(X, Y) :- male(X), parent(X, Y).
sibling(X, Y) :- parent(Z, X), parent(Z, Y).
grandmother(X, Y) :- mother(X, Z), parent(Z, Y).
grandfather(X, Y) :- father(X, Z), parent(Z, Y).
offspring(X, Y) :- parent(Y, X).
offspring(X, Y) :- parent(Z, X), offspring(Z, Y).


sudoku(Rows) :-
  append(Rows, Vs), Vs ins 1..9,
  maplist(all_distinct, Rows),
  transpose(Rows, Columns),
  maplist(all_distinct, Columns),
  Rows = [A,B,C,D,E,F,G,H,I],
  blocks(A, B, C), blocks(D, E, F), blocks(G, H, I),
  maplist(label, Rows).

blocks([], [], []).
blocks([A,B,C|Bs1], [D,E,F|Bs2], [G,H,I|Bs3]) :-
  all_distinct([A,B,C,D,E,F,G,H,I]),
  blocks(Bs1, Bs2, Bs3).

call_result(Relationship, FirstPerson, SecondPerson, X) :-
    call(Relationship, FirstPerson, SecondPerson),
    !,
    X = true.
call_result(_, _, _, X) :-
    X = false.


replace_0(0, _).

replace_0(Input, Output) :-
	is_list(Input), 
	maplist(replace_0, Input, Output),
	!.

replace_0(X, X).



solve(relationship,ID) :-
    string_concat("http://localhost:16316/problem/relationship/", ID, URL),
    http_get(URL, json(Result), []),
    write(Result),
    member(relationship=Relationship, Result),
    member(firstPerson=FirstPerson, Result),
    member(secondPerson=SecondPerson, Result),
    call_result(Relationship, FirstPerson, SecondPerson, X),
    write(X),
    http_post("http://localhost:16316/problem/relationship/", json(json([solution=X, problemKey=ID])), _, []).

solve(sudoku,ID) :-
    string_concat("http://localhost:16316/problem/sudoku/", ID, URL),
    http_get(URL, json(Result), []),
    member(sudoku=Rows, Result),
    replace_0(Rows, Puzzle),
    Puzzle=[A,B,C,D,E,F,G,H,I],
    sudoku([A,B,C,D,E,F,G,H,I]),
    http_post("http://localhost:16316/problem/sudoku/", json(json([solution=Puzzle, problemKey=ID])), _, []).
