//PseInt-condicionales, Canteras Nivel 1
//Gloria Stephany G�mez G�mez

Proceso  condicionales4
	definir usuario Como Caracter;
	definir opcionPleicula Como Entero;
	definir anotacion Como Caracter;
	
	escribir "Ingrese nombre usuario:";
	leer usuario;
	escribir "Ingrese opci�n de alquiler:";
	escribir "1 alquilar pel�cula";
	escribir "2 consultar pel�culas disponibles";
	escribir "3 recibir pel�cula en la video tienda";
	escribir "4 anotaciones sobre pel�cula";
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


