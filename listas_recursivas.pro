domains
	%tipn de dato y la lista
	lista=symbol*
predicates
	%predicado para escribir la lista
	escriba(lista)
clauses
	escriba([]).
	escriba([CABEZA|COLA]):-
				write("Hermano ",CABEZA),nl,
				escriba(COLA).
	
goal
escriba([juan,pedro,pablo,judas]).