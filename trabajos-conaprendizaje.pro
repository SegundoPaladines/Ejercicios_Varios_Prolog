domains
	labor, nacion, nombre, tipo= symbol
facts-profesiones
	profesion(nombre,labor)
	salario(nombre,tipo)
facts-nacionalidad
	pais(nombre,nacion)
predicates
	nondeterm trabajo(nombre)
clauses
	trabajo(P):-
		profesion(P,carpintero),
		pais(P,colombia),
		assert(salario(P,malo));
		
		profesion(P, carpintero),
		pais(P,usa),
		assert(salario(P,bueno)).
	
	profesion(carlos,carpintero).
	profesion(roger,carpintero).
	pais(carlos,colombia).
	pais(roger,usa).
	
goal
	%%trabajo(PERSONA),salario(PERSONA,SALARIO),save("D:\\profesiones.txt",profesiones). %%guarda los hechos de profesiones
	%%consult("D:\\profesiones.txt",profesiones),salario(PERSONA,SALARIO).  %%carga los hechos y consulta el saliario
	%%consult("D:\\profesiones.txt",profesiones),retract(salario(carlos,X)),!,assert(salario(carlos,bueno)),salario(PERSONA,SALARIO). %% carga los hechos y cambia el salario de carlos por bueno, cualquiera que sea el salario
	consult("D:\\profesiones.txt",profesiones),retract(salario(carlos,malo)),assert(salario(carlos,bueno)),salario(PERSONA,SALARIO). %%carga los hechos y cambia el salario de carlos por bueno, pero solo si es malo