n(red, green).		n(red, yellow).
n(green, red).		n(green, yellow).
n(yellow, red).		n(yellow, green).

colors(LU, NW, OW, SZ, UR, ZG) :-
	SZ = red,
    UR = yellow,
	n(LU, NW), n(LU, OW), n(LU, ZG),
	n(NW, OW), n(NW, UR), n(NW, SZ),
	n(OW, UR),
	n(SZ, UR), n(SZ, ZG).

% colors(CH, A, D, I, F, B, N).

