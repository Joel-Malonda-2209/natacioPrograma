Algoritmo ExerciciObligatori
	//NOM: JOEL MALONDA BELTR�N
	
	//Variables
	totalparticipants = 0
	mitjatotal = 0
	guanyador = " "
	maxpunt = 0
	
	//Desenvolupament del exercici
	Escribir "Dis-me quants jutges hi ha"
	Leer jutges
	
	Repetir
		
		Escribir "Dis-me el nom del pa�s"
		Leer pa�s
		
		
		totalvotspais = 0
		
		Para i <- 1 Hasta jutges 
			Escribir "Dis-me el vot del jutge " i
			Leer numvots
			
			Mientras numvots < 0 o numvots > 10 
				Escribir "El vot no es correcte"
				Leer numvots
				
			FinMientras
			totalvotspais <- totalvotspais + numvots
			puntuaci� = totalvotspais / jutges
			
			Si numvots = 10
				vot10 = Verdadero
			FinSi
			
		Fin Para
		Escribir "La puntuaci� de ", pa�s " es ", puntuaci�
		
		Si vot10 
			Escribir pa�s " ha obt�s un 10"
		SiNo
			Escribir pa�s " no ha obt�s ning�n 10"
		FinSi
		
		totalparticipants = totalparticipants + 1
		
		Si maxpunt < puntuaci� Entonces
			maxpunt = puntuaci�
			guanyador = pa�s
		Fin Si
		
		
		Escribir "Vols anyadir altre pa�s?"
		Leer altrepa�s
		
		Si altrepa�s == "No" o altrepa�s == "no" o altrepa�s == "n" o altrepa�s == "N"
			seguir = Falso
		FinSi
		Si altrepa�s == "Si" o altrepa�s == "si" o altrepa�s == "s" o altrepa�s == "S"
			seguir = Verdadero
		FinSi
		
		
		mitjatotal = mitjatotal + puntuaci�
	Hasta Que seguir = Falso
	
	//Conclusions
	Escribir "El total de pa�sos participants es " totalparticipants
	Escribir "El total de la mitja dels pa�sos participants es " mitjatotal / totalparticipants
	Escribir "El pa�s guanyador es " guanyador " amb un total de " maxpunt " punts"
	
FinAlgoritmo
