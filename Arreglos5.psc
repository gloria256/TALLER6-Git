//PseInt-ciclos, Canteras Nivel 1
//Gloria Gómez

Proceso Arreglos5
	Definir matriz Como Caracter;
	Definir vector0_9 Como Entero;
	Definir i Como Entero;
	Definir j Como Entero;
	definir cont Como Entero;
	definir cont2 Como Entero;
	Definir row Como Entero;
	Definir col Como Entero;
	Definir tag Como Logico;
	
	Definir fila Como Caracter;
	Dimension matriz[12,53];
	Dimension vector0_9[10];
	
	para i<-0 hasta 11 Con Paso 1 Hacer
		para j<-0 hasta 52 Con Paso 1 Hacer
			matriz[i,j]<- " ";
		FinPara
	FinPara
	
	matriz[0,24]<-"C";
	matriz[0,25]<-"O";
	matriz[0,26]<-"L";
	matriz[0,27]<-"U";
	matriz[0,28]<-"M";
	matriz[0,29]<-"N";
	matriz[0,30]<-"A";
	
	matriz[4,0]<-"F";
	matriz[5,0]<-"I";
	matriz[6,0]<-"L";
	matriz[7,0]<-"A";
	matriz[8,0]<-"S";
	
	vector0_9[0]<- 0;
	vector0_9[1]<- 1;
	vector0_9[2]<- 2;
	vector0_9[3]<- 3;
	vector0_9[4]<- 4;
	vector0_9[5]<- 5;
	vector0_9[6]<- 6;
	vector0_9[7]<- 7;
	vector0_9[8]<- 8;
	vector0_9[9]<- 9;
	
	cont <- 0;
	cont2 <- 0;
	tag <- Verdadero;
	
	para i<-0 hasta 11 Con Paso 1 Hacer
		cont2<-0;
		para j<-0 hasta 52 Con Paso 1 Hacer
			si i=1 y j>3 Entonces
				si cont%5=0 Entonces
					matriz[i,j]<- ConvertirATexto(vector0_9[cont/5]);
				FinSi
				cont <- cont+1;
			FinSi
			si i>=2 y j>=3 Entonces
				si cont2%5=0 Entonces				
					matriz[i,j]<- ConvertirATexto(vector0_9[cont2/5]+1);
					matriz[i,j+1]<- "x";
					matriz[i,j+2]<- ConvertirATexto(i-1);
				FinSi
				cont2 <- cont2+1;
			FinSi
			si i>= 2 y j=1 Entonces
				matriz[i,j]<- ConvertirATexto(vector0_9[i-2]);
			FinSi
		FinPara
	FinPara
	
	cont <-0;
	fila <- "";
	para i<-0 hasta 11 Con Paso 1 Hacer
		si i=0 Entonces
			para j<-0 hasta 52 Con Paso 1 Hacer
				si matriz[i,j]<>" " Entonces
					fila <- Concatenar(fila,matriz[i,j]);
				SiNo
					fila <- Concatenar(fila," ");
				FinSi
			FinPara
			escribir fila;
			fila <- "";
		FinSi
		si i=1 Entonces
			para j<-0 hasta 52 Con Paso 1 Hacer
				si matriz[i,j]<>" " Entonces
					fila <- Concatenar(fila,matriz[i,j]);
				SiNo
					fila <- Concatenar(fila," ");
				FinSi
			FinPara
			escribir fila;
			fila <- "";
		FinSi
		si i>=2 Entonces
			para j<-0 hasta 52 Con Paso 1 Hacer
				si matriz[i,j]<>"*" Entonces
					fila <- Concatenar(fila,matriz[i,j]);
				SiNo
					fila <- Concatenar(fila,"*");
				FinSi
			FinPara
			escribir fila;
			fila <- "";
		FinSi
	FinPara
	
	mientras tag = Verdadero Hacer
		escribir "inserte fila";
		leer row;
		escribir "inserte columna";
		leer col;
		escribir (row+1)*(col+1);
	FinMientras
	
	
	
FinProceso


