//PseInt-funciones, Canteras Nivel 1
//Gloria Gómez

Proceso Arreglos3_to_funcion
	Definir num Como Entero;
	definir i Como Entero;
	Definir numlimite Como Entero;
	definir contador Como Entero;
	Definir numprimos Como Caracter;
	
	numprimos<- "";
	numlimite<- 1000;
	
	para num<-1 hasta numlimite Con Paso 1 Hacer
		contador<-0;
		para i<-1 hasta numlimite Con Paso 1 Hacer
			si num%i=0 Entonces
				contador <- contador+1;
			FinSi
		FinPara
		si contador<=2 Entonces
			almacenarInformacion(numprimos,num);
		FinSi
	FinPara
	
	escribir "Números primos hasta: ", numlimite;
	escribir Subcadena(numprimos,0,Longitud(numprimos)-2);
	
FinProceso

SubProceso almacenarInformacion(variable Por Referencia,numAlmacenar)
	variable<- Concatenar(variable,Concatenar(ConvertirATexto(numAlmacenar),","));
FinSubProceso

