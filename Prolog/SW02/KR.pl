word(n,e,u). 
word(t,o,p). 
word(t,o,t). 
word(b,r,o,t). 
word(g,r,a,u). 
word(h,a,l,t).
word(a,l,l,e). 
word(j,e,t,z,t). 
word(s,a,g,e,n). 
word(u,n,t,e,n). 
word(z,e,c,k,e).
solution(F1, F2, F3, F4, F5, F6, F7, F8, F9, F10, F11, F12) :-
    word(F2, F3, F4, F5),        % First horizontal word
    word(F8, F9, F10, F11, F12), % Second horizontal word
    word(F1, F3, F6, F8),        % First vertical word
    word(F5, F7, F10).           % Second vertical word

