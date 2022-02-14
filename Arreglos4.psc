//PseInt-ciclos, Canteras Nivel 1
//Gloria Gómez

Proceso Arreglos4
	Definir matriz Como Caracter;
	Definir i Como Entero;
	Definir j Como Entero;
	Definir num Como Real;
	Definir fila Como Caracter;
	
	Dimension matriz[4,5];
	num <- 1;
	fila <- "";
	
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
FinProceso

