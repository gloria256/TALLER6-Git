//PseInt-condicionales, Canteras Nivel 1
//Gloria Stephany Gómez Gómez

Proceso  cond_to_funcion6
	definir ingresoTaller Como Entero;
	mostrarMenu(ingresoTaller);
	accion(ingresoTaller);
FinProceso


SubProceso mostrarMenu(ingresoTaller Por Referencia)
	escribir "Ingrese opción:";
	escribir "1 Motocicleta ingresa al taller";
	escribir "2 Motocileta sale del taller";
	leer ingresoTaller;
FinSubProceso

SubProceso capturarInformacion(mensaje, variable Por Referencia)
	escribir mensaje;
	leer variable;
FinSubProceso

SubProceso accion(ingresoTaller)
	definir opcionInventariar Como Entero;
	definir observaciones,novedad,arreglos Como Caracter;
	segun ingresoTaller hacer
		1:
			capturarInformacion("ingrese observaciones del cliente:",observaciones);
		2:
			capturarInformacion("escriba novedad:",novedad);
			
			escribir "Requiere inventariar cambios repuestos en motocicleta:";
			escribir "1 SI";
			escribir "2 NO";
			leer opcionInventariar;
			segun opcionInventariar hacer
				1: 
					capturarInformacion("escriba arreglos:",arreglos);
				2:
					escribir "gracias por elegir a tienda de motos el Maquinista";
			FinSegun		
	FinSegun
FinSubProceso



