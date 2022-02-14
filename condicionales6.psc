//PseInt-condicionales, Canteras Nivel 1
//Gloria Stephany Gómez Gómez

Proceso  condicionales6

	definir ingresoTaller Como Entero;
	definir observaciones Como Caracter;
	definir novedad Como Caracter;
	definir arreglos Como Caracter;
	definir opcionInventariar Como Entero;
	
	escribir "Ingrese opción:";
	escribir "1 Motocicleta ingresa al taller";
	escribir "2 Motocileta sale del taller";

	leer ingresoTaller;
	segun ingresoTaller hacer
		1:
			escribir "ingrese observaciones del cliente:";
			leer observaciones;
		2:
			escribir "escriba novedad:";
			leer novedad;
			
			escribir "Requiere inventariar cambios repuestos en motocicleta:";
			escribir "1 SI";
			escribir "2 NO";
			
			leer opcionInventariar;
			segun opcionInventariar hacer
				1: 
					escribir "escriba arreglos:";
					leer arreglos;
				2:
			FinSegun		
	FinSegun
FinProceso



