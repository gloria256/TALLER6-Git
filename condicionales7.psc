//PseInt-condicionales, Canteras Nivel 1
//Gloria Stephany Gómez Gómez

Proceso condicionales7
	
	definir Peso Como Entero;
	definir estatura Como Real;
	definir IMC Como Real;
	
	escribir "ingrese peso en Kg:";
	leer peso;
	
	escribir "ingrese estatura en mts:";
	leer estatura;
	
	IMC <- peso/estatura^2;
	escribir "Su IMC (indice de masa corporal) es: ";
	escribir IMC;
	
	si IMC < 18.5 Entonces
		escribir "bajo peso";
	FinSi
	
	si IMC >= 18.5 Y IMC <= 24.9 Entonces
		escribir "normal";
	FinSi
	
	si IMC >= 25.0 Y IMC <= 29.9 Entonces
		escribir "sobrepeso";
	FinSi
	
	si IMC >= 30.0 Entonces
		escribir "obesidad";
	FinSi
	
FinProceso




