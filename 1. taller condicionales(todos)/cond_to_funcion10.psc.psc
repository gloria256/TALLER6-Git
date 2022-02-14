//PseInt-condicionales, Canteras Nivel 1

Proceso cond_to_funcion10
	definir opcion Como Entero;
	definir valorIngreso Como Real;
	definir valorRetiro Como Real;
	Definir valorCuenta Como Real;
	Definir titular Como Caracter;
	Definir usuario Como Caracter;
	
	valorCuenta <- 800000;
	titular <- "PEDRITO";
	capturarInformacion("Ingrese usuario: ",usuario);
	si usuario = titular Entonces
		mostrarMenu(opcion);
		segun opcion hacer
			1:
				capturarInformacion("Ingrese valor a ingresar: ",valorIngreso);
				condicional(valorIngreso>0,"su nuevo valor en cuenta es:","valor a ingresar no válido",valorIngreso,valorCuenta,1);
				
			2: 
				capturarInformacion("Ingrese valor a retirar: ",valorRetiro);
				condicional(valorRetiro <= valorCuenta,"su valor en cuenta es: ","Denegado, valor a retirar supera el valor que tienes ahorrado",valorRetiro,valorCuenta,2);
				
			3:
				escribir "su valor en cuenta es: ",valorCuenta;
		FinSegun
	FinSi	
FinProceso


SubProceso mostrarMenu(opcion Por Referencia)
	escribir "¿qué deseas realizar?:";
	escribir "1. ingresos";
	escribir "2. retiros";
	escribir "3. consultas de valor";
	leer opcion;
FinSubProceso

SubProceso capturarInformacion(mensaje, variable Por Referencia)
	escribir mensaje;
	leer variable;
FinSubProceso

SubProceso condicional(condicion,mensaje1,mensaje2,variable1,variable2 Por Referencia,ind)
	si condicion Entonces
		si ind=1 Entonces
			variable2 <- variable2+variable1;
		SiNo
			variable2 <- variable2-variable1;
		FinSi
		escribir mensaje1;
		escribir variable2;
	SiNo
		escribir mensaje2;
	FinSi
FinSubProceso





