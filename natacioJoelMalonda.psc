Algoritmo ExerciciObligatori
	//NOM: JOEL MALONDA BELTRÁN
	
	//Variables
	totalparticipants = 0
	mitjatotal = 0
	guanyador = " "
	maxpunt = 0
	
	//Desenvolupament del exercici
	Escribir "Dis-me quants jutges hi ha"
	Leer jutges
	
	Repetir
		
		Escribir "Dis-me el nom del país"
		Leer país
		
		
		totalvotspais = 0
		
		Para i <- 1 Hasta jutges 
			Escribir "Dis-me el vot del jutge " i
			Leer numvots
			
			Mientras numvots < 0 o numvots > 10 
				Escribir "El vot no es correcte"
				Leer numvots
				
			FinMientras
			totalvotspais <- totalvotspais + numvots
			puntuació = totalvotspais / jutges
			
			Si numvots = 10
				vot10 = Verdadero
			FinSi
			
		Fin Para
		Escribir "La puntuació de ", país " es ", puntuació
		
		Si vot10 
			Escribir país " ha obtés un 10"
		SiNo
			Escribir país " no ha obtés ningún 10"
		FinSi
		
		totalparticipants = totalparticipants + 1
		
		Si maxpunt < puntuació Entonces
			maxpunt = puntuació
			guanyador = país
		Fin Si
		
		
		Escribir "Vols anyadir altre país?"
		Leer altrepaís
		
		Si altrepaís == "No" o altrepaís == "no" o altrepaís == "n" o altrepaís == "N"
			seguir = Falso
		FinSi
		Si altrepaís == "Si" o altrepaís == "si" o altrepaís == "s" o altrepaís == "S"
			seguir = Verdadero
		FinSi
		
		
		mitjatotal = mitjatotal + puntuació
	Hasta Que seguir = Falso
	
	//Conclusions
	Escribir "El total de països participants es " totalparticipants
	Escribir "El total de la mitja dels països participants es " mitjatotal / totalparticipants
	Escribir "El país guanyador es " guanyador " amb un total de " maxpunt " punts"
	
FinAlgoritmo
