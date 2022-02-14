//PseInt-condicionales, Canteras Nivel 1
//Gloria Stephany Gómez Gómez

Proceso  condicionales8
	
	definir pedido Como caracter;
	definir tortasDiponibles Como caracter;
	definir ventas Como Real;
	definir opcion como Entero;
	
	escribir "que desea realizar:";
	escribir "1. registrar pedido";
	escribir "2. registrar tortas disponibles:";
	escribir "3. registrar ventas diarias";
	
	segun opcion hacer
		1:
			escribir "ingrese detalles del pedido: ";
			escribir "sabor,cantidad (1-5) y decoraciones";
			leer pedido;
		2: 
			escribir "ingrese tortas disponibles:";
			leer tortasDiponibles;
		3:
			escribir "ingrese cantidad de ventas diarias:";
			leer ventas;
	FinSegun
	
FinProceso





