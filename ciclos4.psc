//PseInt-ciclos, Canteras Nivel 1
//Gloria Stephany G�mez G�mez

Proceso cilcos4
	definir numtabla Como Caracter;
	definir tabla Como Caracter;
	definir base Como Caracter;
	definir resultado Como Caracter;
	definir val Como Entero;
	
	escribir "ingrese el n�mero de la tabla de multiplicar:";
	leer numtabla;
	Para val<-1 hasta 10 Con Paso 1 Hacer
		base <- Concatenar(ConvertirATexto(val),"x");
		tabla <- Concatenar(base,numtabla);
		tabla <- Concatenar(tabla,"=");
		resultado <- ConvertirATexto(val*ConvertirANumero(numtabla));
		Escribir Concatenar(tabla,resultado);
	FinPara
FinProceso

