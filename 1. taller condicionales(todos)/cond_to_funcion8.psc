//PseInt-condicionales, Canteras Nivel 1
//Gloria Stephany Gómez Gómez

Proceso  cond_to_funcion8
	definir pedido Como caracter;
	definir tortasDiponibles Como caracter;
	definir ventas Como Real;
	definir opcion como Entero;
	
	mostrarMenu(opcion);
	accion(opcion,pedido,tortasDiponibles,ventas);
	
FinProceso


SubProceso mostrarMenu(opcion Por Referencia)
	escribir "que desea realizar:";
	escribir "1. registrar pedido";
	escribir "2. registrar tortas disponibles:";
	escribir "3. registrar ventas diarias";
	leer opcion;
FinSubProceso

SubProceso accion(opcion,pedido Por Referencia,tortasDiponibles Por Referencia, ventas Por Referencia)
	segun opcion hacer
		1:
			escribir "ingrese detalles del pedido: ";
			capturarInformacion("sabor,cantidad (1-5) y decoraciones", pedido);
		2: 
			capturarInformacion("ingrese tortas disponibles:", tortasDiponibles);
		3:
			capturarInformacion("ingrese cantidad de ventas diarias:", ventas);
	FinSegun
FinSubProceso

SubProceso capturarInformacion(mensaje, variable Por Referencia)
	escribir mensaje;
	leer variable;
FinSubProceso







