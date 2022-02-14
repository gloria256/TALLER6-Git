//PseInt-condicionales, Canteras Nivel 1
//Gloria Stephany Gómez Gómez

Proceso  cond_to_funcion1
	definir edad Como Entero;
	escribir "Ingrese su edad:";
	leer edad;
	
	imprimirMayorDeEdad(edad);
FinProceso

SubProceso imprimirMayorDeEdad(edad)
	si edad>=18 Entonces
		escribir "Usted es mayor de edad";
	FinSi
FinSubProceso