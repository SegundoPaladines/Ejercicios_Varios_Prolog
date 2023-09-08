%repeticion con backtraking
predicates
	%predicados
	nondeterm repita
	nondeterm escriba

clauses
	%reglas
	
	%repita recursivo
	repita.
	repita:- 
		repita.
		
	escriba:-
		repita,
		readChar(C), %Para Leer caracteres de entrada por teclado
		write(C), %Escribir C
		C='\r'. %Si el usuario puso el enter - retorno de carro CONDICION QUE SI SE PUEDE CAMBIAR Y POR LO TANTO PUEDE TERMINAR EL CICLO
goal
	escriba.