//PseInt-condicionales, Canteras Nivel 1
//Gloria Stephany Gómez Gómez

Proceso cond_to_funcion7
	
	definir Peso Como Entero;
	definir estatura Como Real;
	definir IMC Como Real;
	
	capturarInformacion("ingrese peso en Kg:", peso);
	capturarInformacion("ingrese estatura en mts:", estatura);
	
	IMC <- calculoIMC(peso,estatura);
	escribir "Su IMC (indice de masa corporal) es: ", IMC;
	
	condicional( IMC < 18.5,"bajo peso");
	condicional( IMC >= 25.0 Y IMC <= 29.9,"sobrepeso");
	condicional( IMC >= 30.0 Y IMC <= 29.9,"obesidad");
	
FinProceso


SubProceso capturarInformacion(mensaje, variable Por Referencia)
	escribir mensaje;
	leer variable;
FinSubProceso

SubProceso IMC <- calculoIMC(peso,estatura)
	definir IMC Como Real;
	IMC <- peso/estatura^2;
FinSubProceso

SubProceso condicional(condicion,mensaje)
	si condicion Entonces
		escribir mensaje;
	FinSi
FinSubProceso



