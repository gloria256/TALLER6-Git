//PseInt-funciones, Canteras Nivel 1
//Gloria G�mez

Proceso Arreglos4_to_funcion
	Definir matriz Como Caracter;	
	Dimension matriz[4,5];
	
	quemarMatriz3x4(matriz);
	formatoSalida(matriz);
	
FinProceso



SubProceso quemarMatriz3x4(matriz Por Referencia)
	Definir i Como Entero;
	Definir j Como Entero;
	Definir num Como Real;
	num <- 1;
	para i<-0 hasta 3 Con Paso 1 Hacer
		para j<-0 hasta 4 Con Paso 1 Hacer
			si num<=9 Entonces
				matriz[i,j]<-Concatenar("0",ConvertirATexto(num));
			SiNo
				matriz[i,j]<-ConvertirATexto(num);
			FinSi
			num<-num+1;
		FinPara
	FinPara
FinSubProceso

SubProceso formatoSalida(matriz)
	Definir i Como Entero;
	Definir j Como Entero;
	Definir fila Como Caracter;
	fila <- "";
	para i<-0 hasta 3 Con Paso 1 Hacer
		para j<-0 hasta 4 Con Paso 1 Hacer
			si i%2=0 Entonces
				fila <- Concatenar(fila,Concatenar(matriz[i,j]," "));
			SiNo
				fila <- Concatenar(fila,Concatenar(matriz[i,4-j]," "));
			FinSi
		FinPara
		escribir fila;
		fila <- "";
	FinPara
FinSubProceso

