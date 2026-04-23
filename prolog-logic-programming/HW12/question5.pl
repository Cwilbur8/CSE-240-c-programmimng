%Question 5

isort([], []) :-
	!.

isort([X], [X]) :-
	!.


isort([First | Tail], Sorted) :-
	isort(Tail, SortedTail),
	insert(First, SortedTail, Sorted).

insert(X, [Y | Ys], [X, Y | Ys]) :-


	X =< Y,
	!.
	

	X > Y,
	insert(X, Ys, Zs).
