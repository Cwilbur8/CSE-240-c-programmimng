% Question 3
qsort2([], []). 
qsort2([X], [X]).

qsort2([First, Pivot | Tail], Sorted) :-
	partition(Pivot, Tail, Smaller, Greater),
	qsort2(Smaller, SortedSmaller),
	qsort2(Greater, SortedGreater),

	append(SortedSmaller, [Pivot | SortedGreater], Sorted).
	

	partition(_, [], [], []).


	partition(Pivot, [X | Tail], [X | Smaller], Greater) :-
	X =< Pivot,
	partition(Pivot, Tail, Smaller, Greater).

	
	partition(Pivot, [X | Tail], Smaller,[X | Greater]) :-
	X > Pivot,
	partition(Pivot, Tail, Smaller, Greater).
