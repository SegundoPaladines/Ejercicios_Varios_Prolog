%tabla multiplicar con recurcion
domains
	%tipos de dato
	numero=integer
	
predicates
	%predicados
	nondeterm tabla(numero).
	nondeterm t(numero,numero).

clauses
	%reglas
	tabla(NUMERO):-t(NUMERO,1).
	t(_,11):-!. %findel cliclo
	t(NUMERO,CONTADOR1):-
			RES=NUMERO*CONTADOR1,
			write(NUMERO," x ",CONTADOR1," = ",RES,"\n"),
			CONTADOR2=CONTADOR1+1, %EL SIGUIENTE
			t(NUMERO,CONTADOR2). %se lamma a si mismo
goal
tabla(5).
	