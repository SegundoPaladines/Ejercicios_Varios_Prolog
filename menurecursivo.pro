domains

	seleccion = integer
	numero=integer
	resultado=unsigned
	
predicates
	nondeterm caso(seleccion)
	nondeterm menu
	nondeterm factorial(numero,resultado)
	nondeterm tabla(numero)
	nondeterm t(numero,numero)
clauses

	menu:-write("Ingrese un numero \n 1: Factorial \n 2: Tabla Multiplicar \n otro Salir"),nl,readint(N),caso(N).
	caso(1):-
		write("INGRESE EL NUMERO AL CUAL DESEA CALCULAR EL FACTORIAL"),nl,readint(N),
		factorial(N,RESULTADO),write(" EL RESULTADO DEL FACTORIAL DE ",N," ES ",RESULTADO),nl,menu.
	caso(2):-
		write("INGRESE EL NUMERO AL CUAL DESEA SACAR LA TABLA"),nl,readint(N),nl,
		write("LA TABLA DE MULTIPLICAR DEL 1 AL 10 DEL NUMERO ",N," ES:"),nl,tabla(N),nl,menu.
	caso(_):-
		write("Fin Programa"),nl,!.
		
	factorial(0,1):-!.
	factorial(N,ES):-	
			K=N-1, %el n-1
			factorial(K,CUANTO),
			ES=CUANTO*N.
			
	tabla(NUMERO):-t(NUMERO,1).
	t(_,11):-!.
	t(NUMERO,CONTADOR1):-
			RES=NUMERO*CONTADOR1,
			write(NUMERO," x ",CONTADOR1," = ",RES,"\n"),
			CONTADOR2=CONTADOR1+1,
			t(NUMERO,CONTADOR2). 
goal
	menu.	
		