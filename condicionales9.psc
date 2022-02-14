//PseInt-condicionales, Canteras Nivel 1
//Gloria Stephany Gómez Gómez

Proceso condicionales9
	definir figura Como Entero;
	definir largo Como Real;
	definir alto Como Real;
	Definir base Como Real;
	Definir base1 Como Real;
	Definir base2 Como Real;
	Definir area Como Real;
	
	escribir "ingrese la figura geométrica";
	escribir "1. rectángulo";
	escribir "2. triángulo";
	escribir "3. trapecio";
	
	leer figura;
	segun figura hacer
		1:
			escribir "Ingrese largo: ";
			leer largo;
			escribir "Ingrese alto: ";
			leer alto;
			area <- largo*alto;
			
			escribir "el área del rectángulo es:";
			escribir area;
		2: 
			escribir "Ingrese base: ";
			leer base;
			escribir "Ingrese alto: ";
			leer alto;
			area <- (base*alto)/2;
			
			escribir "el área del triángulo es:";
			escribir area;
		3:
			escribir "Ingrese base1: ";
			leer base1;
			escribir "Ingrese base2: ";
			leer base2;
			escribir "Ingrese alto: ";
			leer alto;
			area <- ((base1+base2)*alto)/2;
			
			escribir "el área del trapecio es:";
			escribir area;
	FinSegun
FinProceso

