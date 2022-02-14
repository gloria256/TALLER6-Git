//PseInt-ciclos, Canteras Nivel 1
//Gloria Stephany Gómez Gómez

Proceso cilcos5
	definir nombre Como Caracter;
	definir opcion Como Entero;
	definir bandera Como Logico;
	
	bandera <- Verdadero;
	
	repetir
		escribir "Menú de usuario";
		escribir "1. Captura nombre";
		escribir "2. Saludar persona";
		escribir "3. Salir del sistema";
		
		leer opcion;
		Segun opcion hacer
			1:
				escribir "Ingrese nombre:";
				leer nombre;
			2:
				escribir "Ingrese nombre a quien va a saludar:";
				leer nombre;
				escribir "Hola,",nombre;
			3:
				bandera <- Falso;
		FinSegun
	Hasta Que bandera= Falso
	
	
FinProceso


