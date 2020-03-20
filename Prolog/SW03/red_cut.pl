mem(X, [X | _]). % tail doesn’t matter 
mem(X, [_| Tail]) :- mem(X, Tail). % head doesn’t matter
%L = [_, _, _], mem(a, L) !, mem(b, L), mem(c, L).

% Antwort: Es gibt nur noch eine Lösung aus. Die deklarative wird verändert