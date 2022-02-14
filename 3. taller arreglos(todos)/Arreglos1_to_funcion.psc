//PseInt-funciones, Canteras Nivel 1
//Gloria Gómez

Proceso Arreglos1_to_funcion
	definir vector Como Entero;
	definir val Como Entero;
	Dimension vector[5];
	
	capturarInformacion(val,vector);
	formatoSalida(vector);
FinProceso


SubProceso capturarInformacion(val Por Referencia,vector Por Referencia)
	definir i Como Entero;
	para i<-0 hasta 4 Con Paso 1 Hacer
		escribir "ingrese número ",i+1;
		leer val;
		vector[i] <- val;
	FinPara
FinSubProceso

SubProceso formatoSalida(vector)
	definir i Como Entero;
	para i<-0 hasta 4 Con Paso 1 Hacer
		escribir "[",i,"] = ", vector[i];
	FinPara
FinSubProceso