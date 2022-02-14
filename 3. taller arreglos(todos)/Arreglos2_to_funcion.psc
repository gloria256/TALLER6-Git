//PseInt-funciones, Canteras Nivel 1
//Gloria Gómez


Proceso Arreglos2_to_funcion
	definir Vector Como Entero;
	definir i Como Entero;
	Definir numpares Como Caracter;
	Definir numimpares Como Caracter;
	Dimension Vector[20];
	
	i <- 0;
	numpares<- "";
	numimpares<- "";
	
	generarAleatorios(Vector);
	Mientras i<=19 Hacer
		encontrar_primos_noprimos(i,vector,numpares,numimpares);
		i<- i+1;
	FinMientras
	
	imprimirInformacion("Números pares: ",Subcadena(numpares,0,Longitud(numpares)-2));
	imprimirInformacion("Números impares: ",Subcadena(numimpares,0,Longitud(numimpares)-2));
	
FinProceso


SubProceso generarAleatorios(Vector Por Referencia)
	definir i Como Entero;
	para i<-0 hasta 19 Con Paso 1 Hacer
		Vector[i]<- aleatorio(1,100);
	FinPara
FinSubProceso

SubProceso imprimirInformacion(mensaje,variable)
	escribir mensaje,variable;
FinSubProceso

SubProceso encontrar_primos_noprimos(i,vector,numpares Por Referencia,numimpares Por Referencia)
	si vector[i]%2=0 Entonces
		numpares <- Concatenar(numpares,Concatenar(ConvertirATexto(Vector[i]),","));
	SiNo
		numimpares <- Concatenar(numimpares,Concatenar(ConvertirATexto(Vector[i]),","));
	FinSi
FinSubProceso