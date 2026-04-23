% Q.1
pizza(P, M, B, O, C) :-
    member(P, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]),
    member(M, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]),
    member(B, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]),
    member(O, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]),
    member(C, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]),
    TotalWeight is 5*P + 10*M + 7*B + 3*O + 8*C,
    TotalWeight =:= 45.

% Q 2.2
q2 :- pizza(1, 2, 2, 2, 2).
% no

% Q 2.3
q3 :- pizza(1, M, 1, O, C), write(M), write(' '), write(O), write(' '), write(C), nl.
% C = 3, M = 0, O = 3
% C = 1, M = 1, O = 5
% C = 0, M = 3, O = 1

% Q 2.4
q4 :- pizza(P, M, B, O, 1), write(P), write(' '), write(M), write(' '), write(B), write(' '), write(O), nl.

% B= 4, M= 0, O= 3, P= 0, 
% B= 0, M = 1, O = 9, P = 0,
% B= 3, M = 1, O = 2, P	= 0,
% B= 2, M = 2, O = 1, P	= 0,
% B= 1, M = 3, O = 0, P	= 0,
% B= 2, M = 0, O = 6, P	= 1,
% B= 1, M = 1, O = 5, P	= 1
% B= 0, M = 2, O = 4, P	= 1
% B= 0, M = 0, O = 9, P	= 2,
% B = 3, M = 0, O = 2, p = 2,
% B = 2, M = 1, O = 1, P = 2,
% B = 1, M = 2, O = 0, P = 2,
% B = 1,M = 0, O = 5, P = 3,
% B = 0,M = 1, O = 4, P =3,
% B = 2,M = 0, O = 1, P =4,
% B = 1,M = 1, O = 0, P =4,
% B = 0,M = 0, O = 4, P =5,
% B =1 ,M =0 , O = 0, P =6,
