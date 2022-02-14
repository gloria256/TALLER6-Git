//PseInt-ciclos, Canteras Nivel 1
//Gloria Stephany Gómez Gómez

Proceso cilcos3
	definir asterisco Como Caracter;
	definir espacio Como Caracter;
	definir val Como Entero;
	definir val1 Como Entero;
	
	Para val<-0 hasta 14 Con Paso 1 Hacer
		espacio <- "";
		asterisco <- "*";
		si val = 0 Entonces
			para val1 <-1 hasta 10 Con Paso 1 Hacer
				espacio <- Concatenar(espacio," ");
			FinPara
			escribir espacio,asterisco;
		sino 
			si val <= 10 Entonces
				para val1 <-1 hasta 10-val Con Paso 1 Hacer
					espacio <- Concatenar(espacio," ");
				FinPara
				para val1 <-1 hasta val+val Con Paso 1 Hacer
					asterisco <- Concatenar(asterisco,"*");
				FinPara
				escribir espacio,asterisco;
			FinSi
			
			si val > 10 Entonces
				si val > 10 y val <=12 Entonces
					para val1 <-1 hasta 9 Con Paso 1 Hacer
						espacio <- Concatenar(espacio," ");
					FinPara
					para val1 <-1 hasta 2 Con Paso 1 Hacer
						asterisco <- Concatenar(asterisco,"*");
					FinPara
					escribir espacio,asterisco;
				SiNo
					para val1 <-1 hasta 10-(val-10)+1 Con Paso 1 Hacer
						espacio <- Concatenar(espacio," ");
					FinPara
					para val1 <-1 hasta (2*(val-10))-2 Con Paso 1 Hacer
						asterisco <- Concatenar(asterisco,"*");
					FinPara
					escribir espacio,asterisco;
				FinSi
				
			FinSi
			
		FinSi
	FinPara
FinProceso

