% multiplication with zero: zero
mult(_, 0, 0).
mult(0, _, 0).

% multiply by adding A to A B times
mult(X, Y, Z) :-
    Y > 0,
    Y1 is Y - 1,
    mult(X, Y1, Z1),
    Z is Z1 + X.