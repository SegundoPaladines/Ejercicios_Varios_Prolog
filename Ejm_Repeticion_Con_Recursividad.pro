%repeticion con recurcion
domains
	%tipos de dato
	numero=integer
	resultado=unsigned
	
predicates
	%predicados
	nondeterm factorial(numero,resultado).

clauses
	%reglas
	factorial(0,1):-!. %factorial de 0 es 1 y que no haga mas backtraking
	factorial(N,ES):-	
			K=N-1, %el n-1
			factorial(K,CUANTO), %se lamma a si mismo y devuelve el resultado fac(n-1)
			ES=CUANTO*N. %la multiplicacion fac(n)=fac(n-1)*n
goal
 factorial(8,RESULTADO).