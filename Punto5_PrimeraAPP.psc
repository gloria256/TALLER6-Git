//Ejercicio5 PseInt, Canteras Nivel 1
//Realizar un programa el cual solicite el nombre de su mascota, 
//edad de la mascota, el tipo de mascota y su nombre completo. 
//Al finalizar el sistema debe e imprimir en pantalla el siguiente mensaje: 
//[Nombre de Mascota] es un(a) [Tipo de Mascota], el cual, tiene [Edad de la Mascota] a�os de edad y 
//[Nombre Completo] es actualmente su due�o(a).
Proceso  Punto5_PrimeraAPP
	definir mascota Como Caracter;
	definir edadMascota Como Entero;
	definir tipoMascota Como Caracter;
	definir nombre Como Caracter;
	
	escribir "Ingrese nombre de su mascota:";
	leer mascota;
	escribir "Ingrese edad de su mascota:";
	leer edadMascota;
	escribir "Ingrese el tipo de mascota:";
	leer tipoMascota;
	escribir "Ingrese esu nombre:";
	leer nombre;
	
	escribir mascota,"es un(a)",tipoMascota;
	escribir "el cual, tiene",edadMascota," a�os de edad y";
	escribir nombre,"es actualmente su due�o(a).";
	
FinProceso



