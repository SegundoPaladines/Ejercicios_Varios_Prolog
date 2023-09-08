domains 
	%construir tipo de dato, siempre se hace en domains
	
	%tipos de dato normales
	dia, year = integer
	nombre,apellido,mes=symbol
	
	%tipo de dato construido
	dato_p = persona(nombre, apellido)
	dato_f = fecha(dia,mes,year)
	
predicates

	%predicados que se van a usar
	nondeterm nacimiento(dato_p,dato_f)
	
clauses
	%reglas

	%instancias
	nacimiento(persona(carlos,bastidas),fecha(17,enero,1987)).
	nacimiento(persona(alberto,posada),fecha(9,julio,1957)).
	nacimiento(persona(julio,jaramillo),fecha(21,septiembre,1973)).
	nacimiento(persona(luis,perdomo),fecha(4,agosto,1997)).
	nacimiento(persona(armando,manzanero),fecha(4,enero,1967)).
	
	
goal

% nacimiento(PERSONA,FECHA). %primera consulta
%nacimiento(PERSONA,fecha(DIA,_,_)),DIA<15. %Personas que cumplen antes del 15 de cada mes
%nacimiento(PERSONA,fecha(DIA,MES,YEAR)),(2023-YEAR)>50. %Personas que a la fecha ya tienen mas de 50 años con todos los datos
%nacimiento(PERSONA,fecha(_,_,YEAR)),(2023-YEAR)>50. %Personas que a la fecha ya tienen mas de 50 años datos persona y año solamente
nacimiento(persona(luis,APELLIDO),FECHA). %Apellidos de las personas que se llamen luis


