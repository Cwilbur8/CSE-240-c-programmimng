% Question 4

my_flatten([], []).

my_flatten([Head | Tail], FlatList) :-
	is_list(X),
	!,
	my_flatten(Head, FlatHead),
	my_flatten(Tail, FlatTail),
	
	append(FlatHead, FlatTail, FlatList).

my_flatten([Head | Tail], [Head | FlatTail]) :-
	my_flatten(Tail, FlatTail).
