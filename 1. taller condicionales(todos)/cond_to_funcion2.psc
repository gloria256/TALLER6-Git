//PseInt-condicionales, Canteras Nivel 1
//Gloria Stephany G�mez G�mez

Proceso  cond_to_funcion2
	definir edad Como Entero;
	escribir "Ingrese su edad:";
	leer edad;
	
	imprimirMenorDeEdad(edad);	
FinProceso

SubProceso imprimirMenorDeEdad(edad)
	si edad<18 Entonces
		escribir "Usted a�n es un ni�o(a)";
	FinSi
FinSubProceso


