//PseInt-ciclos, Canteras Nivel 1
//Gloria Gómez

Proceso Arreglos1
	definir vector Como Entero;
	definir i Como Entero;
	definir val Como Entero;
	Dimension vector[5];
	para i<-0 hasta 4 Con Paso 1 Hacer
		escribir "ingrese número ",i+1;
		leer val;
		vector[i] <- val;
	FinPara
	
	para i<-0 hasta 4 Con Paso 1 Hacer
		escribir "[",i,"] = ", vector[i];
	FinPara
	
FinProceso
