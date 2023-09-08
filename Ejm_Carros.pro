domains

	modelo,color_es = symbol

predicates

	compra_carro(modelo,color_es)
	nondeterm carro(symbol,symbol,integer)
	color(symbol,symbol)
	
clauses

	compra_carro(Modelo,Color):-
			carro(Modelo,Color,Precio),
			color(Color, sexy),!,
			Precio<25000.
	carro(renault,rojo,17000).
	carro(kia,rojo,23000).
	carro(chevrolet,verde,24000).
	carro(chevrolet,rojo,26000).
	carro(chevrolet,negro,30000).
	color(rojo,sexy).
	color(negro,serio).
	color(verde,relajante).
	
goal

	compra_carro(Modelo,Color).