//PseInt-condicionales, Canteras Nivel 1

Proceso condicionales10
	definir opcion Como Entero;
	definir valorIngreso Como Real;
	definir valorRetiro Como Real;
	Definir valorCuenta Como Real;
	Definir titular Como Caracter;
	Definir usuario Como Caracter;
	
	valorCuenta <- 800000;
	titular <- "PEDRITO";
	
	escribir "Ingrese usuario: ";
	leer usuario;
	
	si usuario = titular Entonces
		escribir "¿qué deseas realizar?:";
		escribir "1. ingresos";
		escribir "2. retiros";
		escribir "3. consultas de valor";
		
		leer opcion;
		segun opcion hacer
			1:
				escribir "Ingrese valor a ingresar: ";
				leer valorIngreso;
				
				si valorIngreso > 0 Entonces
					valorCuenta <- valorCuenta+valorIngreso;
					escribir "su nuevo valor en cuenta es:";
					escribir valorCuenta;
				SiNo
					escribir "valor a ingresar no válido";
				FinSi
				
			2: 
				escribir "Ingrese valor a retirar: ";
				leer valorRetiro;
				
				si valorRetiro <= valorCuenta Entonces
					valorCuenta <- valorCuenta-valorRetiro;
					escribir "su valor en cuenta es: ";
					escribir valorCuenta;
				SiNo
					escribir "Denegado, valor a retirar supera el valor que tienes ahorrado";
				FinSi
				
			3:
				escribir "su valor en cuenta es: ";
				escribir valorCuenta;
		FinSegun
	FinSi
	
	
FinProceso


