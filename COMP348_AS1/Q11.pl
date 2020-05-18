/*
	Question 11
*/


lucas(X, L):- lucas2(X, L2),  reverse(L2,L,[]).

lucas2(1, [2]).
lucas2(2, [1,2]).
lucas2(N, [R,X,Y|Zs]) :-
    N > 1,
    N1 is N - 1,
    lucas2(N1, [X,Y|Zs]),
    R is X + Y.


reverse([],X,X).
reverse([H|T],X,Acc) :- reverse(T,X,[H|Acc]).