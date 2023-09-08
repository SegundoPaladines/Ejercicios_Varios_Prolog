domains

	%tipos de dato
	tipo_ojos, tipo_dientes, tipo_alimento, pelaje, detalles, animal, t_especie, color = symbol %pelaje refier a si tiene plumas, escamas, pelo u otro
	
	
predicates

	%predicados a utlizar
	nondeterm especie(animal,t_especie) %la especie del animal
	nondeterm piel(animal,symbol) %tipo de piel
	nondeterm tipo_piel(symbol, pelaje, color, detalles) %tipo piel
	nondeterm alimentacion(animal,tipo_alimento) %el tipo de alimentos que come
	nondeterm ojos(animal,tipo_ojos) %el tipo de ojos que tiene
	nondeterm dientes(animal, tipo_dientes) % el tipo de dientes que tiene
	nondeterm vuela(animal) %si el animal vuela
	nondeterm no_vuela(animal) %si el animal no vuela
	nondeterm pone_huevos(animal) %si el animal pone huevos
	nondeterm da_leche(animal) %si el animal da leche
	nondeterm rumia(animal) %si animalel animal rumia
	nondeterm ungulado(animal) %si el animal es ungulado
	nondeterm ave(animal)%si eanimall animal es mamifero
	nondeterm mamifero(animal) %si el animal es un ave
	nondeterm carnivoro(animal) %si el animal es carnivoro
	nondeterm cuello_largo(animal) %si el animal tiene cuello largo
	
clauses
	%reglas
	mamifero(ANIMAL):- piel(ANIMAL,TIPO_PIEL),
			tipo_piel(TIPO_PIEL,pelo,_,_),write(ANIMAL," es un Mamifero \n"). %si tiene pelo es mamifero
	
	mamifero(ANIMAL):- da_leche(ANIMAL),write(ANIMAL," es un Mamifero \n"). %si da leche es mamifero
			
	ave(ANIMAL):- piel(ANIMAL,TIPO_PIEL),
			tipo_piel(TIPO_PIEL,plumas,_,_), write(ANIMAL," es un Ave \n"). % si tiene plumas es ave
		
	ave(ANIMAL):- pone_huevos(ANIMAL),
	              vuela(ANIMAL), write(ANIMAL," es un Ave \n"). %si el animal pone huevos y vuela es ave
	
	carnivoro(ANIMAL):- mamifero(ANIMAL),
			    alimentacion(ANIMAL,carne), write(ANIMAL," es Carnivoro \n"). %si el animal es mamifero y come carne es carnivoro
	
	carnivoro(ANIMAL):- mamifero(ANIMAL),
			    dientes(ANIMAL,agudos),
			    ojos(ANIMAL,mirandelate), write(ANIMAL," es Carnivoro \n"). % si es mamifero con dientes agudos y ojos que miran hacia delante es carnivoro
			    
	ungulado(ANIMAL):- mamifero(ANIMAL),
			   rumia(ANIMAL), write(ANIMAL," es Ungulado \n"). %si el animal es hungulado
	
	especie(ANIMAL, pinguino):- ave(ANIMAL),
				    no_vuela(ANIMAL). %si es un ave y no vuela es un pinguino
	
	especie(ANIMAL, alvatroz):- ave(ANIMAL),
				    vuela(ANIMAL). %si es un ave y vuela alvatroz
				    
	especie(ANIMAL, cebra):- ungulado(ANIMAL),
	                            piel(ANIMAL, TIPO_PIEL),
	                            tipo_piel(TIPO_PIEL,pelo,negro,franjasblancas). %si es ungulado y tiene franjas negras y blancas es una cebra
	 
	especie(ANIMAL, jirafa):- ungulado(ANIMAL),
	                            piel(ANIMAL, TIPO_PIEL),
	                            tipo_piel(TIPO_PIEL,pelo,leonado,sinfranjas),
	                            cuello_largo(ANIMAL). %si es ungulado y tiene cuello largo y es color leonado es jirafa
	
	especie(ANIMAL, puma):- carnivoro(ANIMAL),
	                            piel(ANIMAL, TIPO_PIEL),
	                            tipo_piel(TIPO_PIEL,pelo,leonado,sinfranjas). %si es carnivoro y  es color leonado es puma
	                            
	especie(ANIMAL, tigre):- carnivoro(ANIMAL),
	                            piel(ANIMAL, TIPO_PIEL),
	                            tipo_piel(TIPO_PIEL,pelo,leonado,franjasnegras). %si es carnivoro y  es color leonado y franjas negras es tigre
	                  
	  
	 %datos
	 piel(pepe,peludo1).
	 piel(pingue,emplumado).
	 cuello_largo(pepe).
	 rumia(pepe).
	 tipo_piel(peludo1,pelo,leonado,sinfranjas).
	 
	 %%mas datos
	 tipo_piel(emplumado,plumas,negro,franjablanca).
	 tipo_piel(peludo2,pelo,leonado,franjasnegras).
	 
	 da_leche(denis).
	 alimentacion(jaino,carne).
	 
	 ojos(mirringo,mirandelate).
	 
	 dientes(yummi,agudos).
	 
	 vuela(fifi).
	 no_vuela(pingue).
	 
	 pone_huevos(fifi).
	 pone_huevos(pingue).
	 
				    
	
goal

especie(ANIMAL,ESPECIE).
			    
	
	
	
	
		
	
	
					 
	
	
	
	
	
	