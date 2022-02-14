//Ejercicio3 PseInt, Canteras Nivel 1
//Realizar un programa el cual solicite su nombre y apellidos, 
//también debe capturar nombre y apellidos de su padre y madre. 
//Al finalizar debe imprimir en pantalla el siguiente mensaje 
//"Yo [Nombre Completo], soy hijo de [Nombre de la Madre] y [Nombre del Padre].
Proceso  Punto3_PrimeraAPP
	definir nombre Como Caracter;
	definir apellidos Como Caracter;
	definir nombrePadre Como Caracter;
	definir apellidosPadre Como Caracter;
	definir nombreMadre Como Caracter;
	definir apellidosMadre Como Caracter;
	
	escribir "Ingrese su nombre:";
	leer nombre;
	escribir "Ingrese sua apellidos:";
	leer apellidos;
	escribir "Ingrese nombre de su padre:";
	leer nombrePadre;
	escribir "Ingrese apellidos de su padre:";
	leer apellidosPadre;
	escribir "Ingrese nombre de su madre:";
	leer nombreMadre;
	escribir "Ingrese apellidos de su madre:";
	leer apellidosMadre;
	
	escribir "Yo ",nombre,apellidos," soy hijo de: ",nombreMadre," y ",nombrePadre;
	
FinProceso


