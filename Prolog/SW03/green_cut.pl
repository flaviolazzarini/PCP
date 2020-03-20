warn(T) :- T < 80, write('Temperatur ok').
warn(T) :- T >=80 , T < 100, write('Temperatur sehr warm').
warn(T) :- T >=100, write('Temperatur zu heiss').

%% Antwort: suchbaum wird nach dem Cut nicht mehr weiter aufgebaut, die 2 und 3 Regel werden nicht abgearbeitet