//PseInt-ciclos, Canteras Nivel 1
//Gloria Gómez

Proceso Arreglos2
	definir Vector Como Entero;
	definir i Como Entero;
	Definir indice Como Entero;
	Definir numpares Como Caracter;
	Definir numimpares Como Caracter;
	Dimension vector[20];
	
	indice <- 0;
	numpares<- "";
	numimpares<- "";
	para i<-0 hasta 19 Con Paso 1 Hacer
		vector[i]<- aleatorio(1,100);
	FinPara
	
	Mientras indice<=19 Hacer
		si vector[indice]%2=0 Entonces
			numpares <- Concatenar(numpares,Concatenar(ConvertirATexto(vector[indice]),","));
		SiNo
			numimpares <- Concatenar(numimpares,Concatenar(ConvertirATexto(vector[indice]),","));
		FinSi
		indice<- indice+1;
	FinMientras
	
	escribir "Números pares: ";
	escribir Subcadena(numpares,0,Longitud(numpares)-2);
	escribir "Números impares: ";
	escribir Subcadena(numimpares,0,Longitud(numimpares)-2);
	
FinProceso
