//PseInt-ciclos, Canteras Nivel 1
//Gloria Stephany Gómez Gómez

//Se está creando una aplicación que va a estar conectada con un prototipo que permita almacenar contactos telefónicos
//en el dispositivo. Para ello cada contacto debe contener nombre completo, teléfono y organización. Se requiere que la 
//aplicación permita añadir 3 contactos verificando que el número no esté almacenado, buscar contactos almacenados y 
//eliminar contactos si el usuario lo requiere. Recuerde que el sistema debe terminar cuando el usuario así lo indique.


Proceso ciclos6_to_funcion
	definir contacto,contacto1,subtext Como Caracter;
	definir contador,opcion Como Entero;
	definir cont,cont1,cont2,cont3,cont4 Como Entero;
	definir numero0,numero1 Como Caracter;
	definir bandera,bandera1 Como Logico;
	
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
					obtenerInformacion("Ingrese nombre completo,teléfono,organización",contacto);
					almacenarNumeroContactoActual(contacto,cont,cont1,cont2,numero0);

					cont <- 0;
					cont2 <- 0;
					si contacto1 = "" Entonces
						contacto1 <- Concatenar(contacto1,Concatenar(contacto,";"));
					SiNo
						
						para contador<-1 Hasta Longitud(contacto1) con paso 1 Hacer
							
							si SubCadena(contacto1,contador,contador)=";" Entonces
								cont4<-cont4+1;
								condicional(contacto1,contador,cont,cont1,cont2,cont4,subtext,numero1);
								cont<-contador;

								si numero0 == numero1 Entonces
									escribir "numero repetido";
									Repetir							
										cont <- 0;
										cont2 <- 0;
										obtenerInformacion("Ingrese nombre completo,teléfono,organización",contacto);
										almacenarNumeroContactoActual(contacto,cont,cont1,cont2,numero0);
										
										cont <- 0;
										cont2 <- 0;
										para contador<-1 Hasta Longitud(contacto1) con paso 1 Hacer
											si SubCadena(contacto1,contador,contador)=";" Entonces
												cont4<-cont4+1;
												condicional(contacto1,contador,cont,cont1,cont2,cont4,subtext,numero1);
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



SubProceso almacenarNumeroContactoActual(contacto,cont,cont1,cont2 Por Referencia,numero0 Por Referencia)
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
FinSubProceso

SubProceso almacenarNumeroContactosDeRegistro(subtext,cont,cont1,cont2 Por Referencia,numero1 Por Referencia)
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
FinSubProceso

SubProceso condicional(contacto1,contador,cont,cont1,cont2 Por Referencia,cont4,subtext Por Referencia,numero1 Por Referencia)
	si cont4=1 Entonces
		subtext <- SubCadena(contacto1,0,contador-1);
		almacenarNumeroContactosDeRegistro(subtext,cont,cont1,cont2,numero1);
	SiNo
		subtext <- SubCadena(contacto1,cont+1,contador-1);
		cont2 <- 0;
		almacenarNumeroContactosDeRegistro(subtext,cont,cont1,cont2,numero1);				
	FinSi
FinSubProceso

SubProceso obtenerInformacion(mensaje,variable Por Referencia)
	escribir mensaje;
	leer variable;
FinSubProceso




