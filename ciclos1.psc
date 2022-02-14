//PseInt-ciclos, Canteras Nivel 1
//Gloria Stephany Gómez Gómez

Proceso cilcos1
	definir asterisco Como Caracter;
	definir val Como Entero;
	definir val1 Como Entero;
	
	Para val<-0 hasta 9 Con Paso 1 Hacer
		si val = 0 Entonces
			escribir "*";
		sino 
			asterisco <- "*";
			para val1 <-1 hasta val Con Paso 1 Hacer
				asterisco <- Concatenar(asterisco,"*");
			FinPara
			escribir asterisco;
		FinSi
	FinPara
FinProceso
