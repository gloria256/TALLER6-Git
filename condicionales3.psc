//PseInt-condicionales, Canteras Nivel 1

Proceso  condicionales3
	definir nombre Como Caracter;
	definir apellidos Como Caracter;
	definir edad Como Entero;
	
	escribir "Ingrese su nombre:";
	leer nombre;
	escribir "Ingrese sus apellidos:";
	leer apellidos;
	escribir "Ingrese su edad:";
	leer edad;
	
	si edad>=18 Entonces
		escribir nombre,apellidos,"usted es mayor de edad, por lo tanto puede entrar a la fiesta";
	SiNo
		escribir nombre,apellidos,"usted es menor de edad, por lo tanto, no puede entrar a la fiesta, por favor devuélvase a su casa.";
	FinSi
FinProceso



