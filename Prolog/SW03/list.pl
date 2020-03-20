%%% a)
add_tail(X, [], [X]). % add to empty list
add_tail(X, [Head | []], [Head, X]). % add to list with one element
add_tail(X, [Head | Tail], L1):- % add to list with n>1 elements
    add_tail(X, Tail, L2), % add element to list without its head
    L1 = [Head | L2].  % add the head back to the list

%%% b)
del([X], X, []). % Lösche aus Liste mit einem Element
del([X | Tail], X, Tail). % Gesuchtes Element ist im Head
del([Head | Tail], X, L1) :-
    del(Tail, X, L2),
    L1 = [Head | L2].

%%% c)
mem_d(X, L):-
    del(L, X, _).

%%% d)
rev_acc([], A, A).
rev_acc([Head | Tail], A, R):-
    rev_acc(Tail, [Head | A], R).

%%% e)
rev(L, R) :-
    rev_acc(L, [], R).