//PseInt-ciclos, Canteras Nivel 1
//Gloria Stephany Gómez Gómez

//Se está creando una aplicación que va a estar conectada con un prototipo que permita almacenar contactos telefónicos
//en el dispositivo. Para ello cada contacto debe contener nombre completo, teléfono y organización. Se requiere que la 
//aplicación permita añadir 3 contactos verificando que el número no esté almacenado, buscar contactos almacenados y 
//eliminar contactos si el usuario lo requiere. Recuerde que el sistema debe terminar cuando el usuario así lo indique.

Proceso ciclos6
	definir contacto Como Caracter; 	//nombre completo,teléfono,organización
	definir contacto1 Como Caracter;	//registrar contactos separados por ";" -> nc,tel,org;nc,tel,org;nc,tel,org;"
	definir contador Como Entero;		//iterar sobre registro de contactos
	definir opcion Como Entero;		//menú del usuario
	definir cont Como Entero;			//guarda posición de la ","  anterior al teléfono
	definir cont1 Como Entero;			//iterar sobre el contacto
	definir cont2 Como Entero;			//cada vez que se encuentra una "," en contacto guarda ese indice + 1
	definir cont3 Como Entero;			//repite hasta que 3 contactos sean agregados consecutivamente
	definir cont4 Como Entero;			//detecta cuando en la literación del registro se completa un contacto -> "nc,tel,org;nc,tel,org;nc,tel,org;"
	Definir subtext Como Caracter;	//almacena cada contacto del registro de contactos
	definir numero0 Como Caracter;	//almacena el número de teléfono del contacto ingresado actual
	definir numero1 Como Caracter;	//almacena el número de teléfono de cada contacto almacenado en el registro 
	definir bandera Como Logico;		//controla el ciclo para que no se almacene teléfonos repetidos
	definir bandera1 Como Logico;		//controla el ciclo de repetir del programa
	
	contacto1 <- "";
	cont <- 0;
	cont1 <- 0;
	cont2 <- 0;
	cont3 <- 1;
	cont4 <- 0;
	numero0 <- "";
	numero1 <- "";
	bandera <- Verdadero;
	bandera1 <- Verdadero;
	
	Repetir	
		
		escribir "Menú de usuario";
		escribir "1. Añadir contactos";
		escribir "2. Buscar contactos";
		escribir "3. Eliminar contactos";
		escribir "4. salir";
		
		
		leer opcion;
		Segun opcion hacer
			1:
				para cont3<-1 Hasta 3 con paso 1 Hacer
					cont <- 0;
					cont2 <- 0;
					
					escribir "Ingrese nombre completo,teléfono,organización";
					leer contacto;		
					
					para cont1<-1 Hasta Longitud(contacto) con paso 1 Hacer
						si SubCadena(contacto,cont1,cont1)="," Entonces
							cont2<-cont2+1;
							si cont2=1 Entonces
								cont <- cont1;
							FinSi
							si cont2 = 2 Entonces
								numero0 <- SubCadena(contacto,cont+1,cont1-1);
							FinSi
						FinSi
					FinPara
					
					cont <- 0;
					cont2 <- 0;
					
					si contacto1 = "" Entonces
						contacto1 <- Concatenar(contacto1,Concatenar(contacto,";"));
					SiNo
						
						para contador<-1 Hasta Longitud(contacto1) con paso 1 Hacer
							
							si SubCadena(contacto1,contador,contador)=";" Entonces
								cont4<-cont4+1;
								si cont4=1 Entonces
									subtext <- SubCadena(contacto1,0,contador-1);
									para cont1<-1 Hasta Longitud(subtext) con paso 1 Hacer
										si SubCadena(subtext,cont1,cont1)="," Entonces
											cont2<-cont2+1;
											si cont2=1 Entonces
												cont <- cont1;
											FinSi
											si cont2 = 2 Entonces
												numero1 <- SubCadena(subtext,cont+1,cont1-1);
											FinSi
										FinSi
									FinPara
									
								SiNo
									subtext <- SubCadena(contacto1,cont+1,contador-1);
									cont2 <- 0;
									para cont1<-1 Hasta Longitud(subtext) con paso 1 Hacer
										si SubCadena(subtext,cont1,cont1)="," Entonces
											cont2<-cont2+1;
											si cont2=1 Entonces
												cont <- cont1;
											FinSi
											si cont2 = 2 Entonces
												numero1 <- SubCadena(subtext,cont+1,cont1-1);
											FinSi
										FinSi
									FinPara					
								FinSi
								cont<-contador;
								
								
								
								
								si numero0 == numero1 Entonces
									escribir "numero repetido";
									Repetir							
										cont <- 0;
										cont2 <- 0;
										
										escribir "Ingrese nombre completo,teléfono,organización";
										leer contacto;		
										
										para cont1<-1 Hasta Longitud(contacto) con paso 1 Hacer
											si SubCadena(contacto,cont1,cont1)="," Entonces
												cont2<-cont2+1;
												si cont2=1 Entonces
													cont <- cont1;
												FinSi
												si cont2 = 2 Entonces
													numero0 <- SubCadena(contacto,cont+1,cont1-1);
												FinSi
											FinSi
										FinPara
										
										cont <- 0;
										cont2 <- 0;
										
										para contador<-1 Hasta Longitud(contacto1) con paso 1 Hacer
											si SubCadena(contacto1,contador,contador)=";" Entonces
												cont4<-cont4+1;
												si cont4=1 Entonces
													subtext <- SubCadena(contacto1,0,contador-1);
													para cont1<-1 Hasta Longitud(subtext) con paso 1 Hacer
														si SubCadena(subtext,cont1,cont1)="," Entonces
															cont2<-cont2+1;
															si cont2=1 Entonces
																cont <- cont1;
															FinSi
															si cont2 = 2 Entonces
																numero1 <- SubCadena(subtext,cont+1,cont1-1);
															FinSi
														FinSi
													FinPara
												SiNo
													subtext <- SubCadena(contacto1,cont+1,contador-1);
													cont2 <- 0;
													para cont1<-1 Hasta Longitud(subtext) con paso 1 Hacer
														si SubCadena(subtext,cont1,cont1)="," Entonces
															cont2<-cont2+1;
															si cont2=1 Entonces
																cont <- cont1;
															FinSi
															si cont2 = 2 Entonces
																numero1 <- SubCadena(subtext,cont+1,cont1-1);
															FinSi
														FinSi
													FinPara					
												FinSi
												cont<-contador;
												si numero0 <> numero1 Entonces
													bandera <-Falso;
												FinSi
											FinSi				
										FinPara
										cont3 <- cont3+1;
									Hasta Que bandera=Falso
								FinSi
								
								
								
								
							FinSi				
						FinPara
						contacto1 <- Concatenar(contacto1,Concatenar(contacto,";"));
					FinSi
					
					
				FinPara
			2:
				escribir "sus contactos son: ";
				escribir contacto1;
			3:
				escribir "contactos eliminados";
				contacto1 <- "";
			4: 
				bandera1 <- Falso;
		FinSegun
		
		
	Hasta Que bandera1 = Falso
	
	
	
	
	
FinProceso




