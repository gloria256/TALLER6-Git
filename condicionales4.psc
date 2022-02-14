//PseInt-condicionales, Canteras Nivel 1
//Gloria Stephany Gómez Gómez

Proceso  condicionales4
	definir usuario Como Caracter;
	definir opcionPleicula Como Entero;
	definir anotacion Como Caracter;
	
	escribir "Ingrese nombre usuario:";
	leer usuario;
	escribir "Ingrese opción de alquiler:";
	escribir "1 alquilar película";
	escribir "2 consultar películas disponibles";
	escribir "3 recibir película en la video tienda";
	escribir "4 anotaciones sobre película";
	leer opcionPelicula;
	
	segun opcionPelicula hacer
		1:
			escribir "pelicula alquilada";
		2:
			escribir "no tenemos peliculas disponibles";
		3:
			escribir "si se puede recibir en video tienda";
		4: 
			escribir "ingrese anotaciones:";
			leer anotacion;
	FinSegun
	
FinProceso


