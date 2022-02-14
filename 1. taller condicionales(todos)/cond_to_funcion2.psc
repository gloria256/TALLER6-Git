//PseInt-condicionales, Canteras Nivel 1
//Gloria Stephany Gómez Gómez

Proceso  cond_to_funcion2
	definir edad Como Entero;
	escribir "Ingrese su edad:";
	leer edad;
	
	imprimirMenorDeEdad(edad);	
FinProceso

SubProceso imprimirMenorDeEdad(edad)
	si edad<18 Entonces
		escribir "Usted aún es un niño(a)";
	FinSi
FinSubProceso


