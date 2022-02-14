//PseInt-condicionales, Canteras Nivel 1
//Gloria Stephany Gómez Gómez

Proceso  cond_to_funcion3
	definir nombre, apellidos Como Caracter;
	definir edad Como Entero;
	
	escribir "Ingrese su nombre:";
	leer nombre;
	escribir "Ingrese sus apellidos:";
	leer apellidos;
	escribir "Ingrese su edad:";
	leer edad;
	
	RestriccionEntrada(nombre,apellidos,edad);
FinProceso

SubProceso RestriccionEntrada(nombre,apellidos,edad)
	si edad>=18 Entonces
		escribir nombre," ",apellidos,", usted es mayor de edad, por lo tanto puede entrar a la fiesta";
	SiNo
		escribir nombre," ",apellidos,", usted es menor de edad, por lo tanto, no puede entrar a la fiesta, por favor devuélvase a su casa.";
	FinSi
FinSubProceso



