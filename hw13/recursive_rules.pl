ackermann(S,T,A) :-
        S is 0, A is T+1.
ackermann(S,T,A) :-
        T is 0, X is S-1, ackermann(X, 1, A).
ackermann(S,T,A) :-
        X is S-1, Y is T-1, ackermann(S, Y, NT), ackermann(X, NT, A).


exp(Y,X,N) :-
	X is 0, N is 0, write(anerrormessage).
exp(Y,X,N) :-
	N is 0, Y is 1, !.
exp(Y,X,N) :-
	X is 1, Y is 1, !.
exp(Y,X,N) :-
	N2 is N-1, Y2 is Y // X, exp(Y2, X, N2), !.

factorial(Y, X, N) :-
        X is 1, !.
factorial(Y, X, 1) :-
        Y2 = Y // X,
        X2 = X - 1,
        factorial(Y2, X2, 1).
factorial(Y, X, N) :-
        exp(Y2,X,N),
        factorial(Y,Y2,1).

