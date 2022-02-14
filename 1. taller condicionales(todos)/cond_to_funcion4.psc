//PseInt-condicionales, Canteras Nivel 1
//Gloria Stephany Gómez Gómez

Proceso  cond_to_funcion4
	definir opcionPelicula Como Entero;
	
	opcionPelicula <- mostrarMenu();
	accion(opcionPelicula);
FinProceso


SubProceso opcion <- mostrarMenu()
	definir opcion Como Entero;
	escribir "Ingrese opción de alquiler:";
	escribir "1 alquilar película";
	escribir "2 consultar películas disponibles";
	escribir "3 recibir película en la video tienda";
	leer opcion;
FinSubProceso

SubProceso accion(opcionPelicula)
	definir alquiler Como Caracter;
	definir anotacion Como Caracter;
	Dimension alquiler[2];
	
	segun opcionPelicula hacer
		1:
			alquiler[0] <- alquilarPelicula(alquiler);
		2:
			escribir "no tenemos peliculas disponibles";
		3:
			escribir "si se puede recibir en video tienda";
			escribir "desea realizar anotaciones: SI/NO";
			leer anotacion;
			si anotacion="SI" Entonces
				escribir "ingrese anotaciones:";
				leer anotacion;
			SiNo
				Escribir "gracias por elegir a Videotienda";
			FinSi
	FinSegun
FinSubProceso


SubProceso alquiler <- alquilarPelicula(alquiler)
	Definir usuario,nombrepelicula Como Caracter;
	escribir "Ingrese nombre usuario";
	leer usuario;
	escribir "Ingrese nombre pelicula";
	leer nombrepelicula;
	
	alquiler[0]<- usuario;
	alquiler[1]<- nombrepelicula;
	escribir "pelicula alquilada";
FinSubProceso






