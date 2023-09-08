%repeticion con backtraking
predicates
	%predicados
	nondeterm repita(integer)
	nondeterm tabla(integer)
	nondeterm tablamultiplicar(integer,integer)

clauses

	repita(1).
	repita(CONTADOR):-
		CONTADOR1=CONTADOR+1,
		write(CONTADOR),
		repita(CONTADOR1),
		CONTADOR1<10.
		
	tabla(NUMERO):-tablamultiplicar(NUMERO,1).
	tablamultiplicar(_,CONTADOR):-
		repita(CONTADOR),
		CONTADOR=10.
goal
	tabla(8).