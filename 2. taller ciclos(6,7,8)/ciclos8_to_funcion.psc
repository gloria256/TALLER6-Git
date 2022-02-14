//PseInt-ciclos, Canteras Nivel 1
//Gloria Stephany Gómez Gómez

//La escuela automovilística "El Maestro" requiere una aplicación que permita registrar 
//a sus clientes en los cursos de enseñanza automovilística y establecer quienes lo han 
//aprobado para continuar con el trámite de adquirir la licencia de conducción. Para cada 
//usuario se debe permitir registrar su ingreso al curso, consultar usuarios que hayan presentado 
//el curso y resultados de la prueba del curso (si fueron aprobados o no). Recuerde que el sistema 
//debe terminar cuando el usuario así lo indique. Tenga presente que la escuela tiene capacidad máxima 
//de gestionar 8 usuarios en su totalidad.

SubProceso obtenerInformacion(mensaje,variable Por Referencia)
	escribir mensaje;
	leer variable;
FinSubProceso

SubProceso salidaDeInformacion(mensaje,variable)
	escribir mensaje;
	escribir variable;
FinSubProceso

Proceso ciclos8_to_funcion
	definir opcion Como Entero;     
	definir usuario,Nota Como Caracter;
	definir subtexto1,subtexto2 Como Caracter;
	definir registroUsuario,registroNota,registro Como Caracter;
	definir cont,cont1,cont2,cont3,cont4,cont5,cont6 Como Entero;
	definir bandera Como Logico;
	
	cont6 <- 1;
	registroNota <- "";
	registroUsuario <- "";
	bandera <- Verdadero;
	
	Repetir	
		
		escribir "Menú de usuario";
		escribir "1. Registrar ingreso al curso";
		escribir "2. Consultar usuarios que presentaron curso";
		escribir "3. Resultados de la prueba del curso";
		escribir "4. salir";
		
		
		leer opcion;
		Segun opcion hacer
			1:
				si cont6 <= 8 entonces
					obtenerInformacion("Ingrese su usuario:",usuario);
					registroUsuario <- Concatenar(registroUsuario,Concatenar(usuario,","));
					
					obtenerInformacion("Ingrese su nota:",nota);
					registroNota <- Concatenar(registroNota,Concatenar(nota,","));
					
					Limpiar Pantalla;
				sino
					escribir "No se puede registrar más usuarios, capacidad máxima para 8";
				FinSi
					
				
			2:
				salidaDeInformacion("Los usuarios que presentaron el curso son: ",registroUsuario);
				
			3:
				cont <- 0;
				cont1 <- 0;
				cont2 <- 0;
				cont3 <- 0;
				cont4 <- 0;
				subtexto1 <- "";
				subtexto2 <- "";
				registro <- "";
				para cont<-1 Hasta Longitud(registroUsuario) con paso 1 Hacer
					si SubCadena(registroUsuario,cont,cont)="," Entonces
						subtexto1 <- Concatenar(SubCadena(registroUsuario,cont3,cont-1),":");
						cont4 <- cont4+1;
						cont5 <- 0;
						para cont1<-1 Hasta Longitud(registroNota) con paso 1 Hacer
							si SubCadena(registroNota,cont1,cont1)="," Entonces
								cont5 <- cont5+1;
								si cont4 = cont5 Entonces
									subtexto2 <- Concatenar(SubCadena(registroNota,cont2,cont1-1),", ");
									registro <- Concatenar(registro,Concatenar(subtexto1,subtexto2));
								FinSi
								cont2<-cont1+1;
							FinSi
						FinPara
						cont3<-cont+1;
					FinSi
				FinPara
				salidaDeInformacion("El resultado de la prueba del curso es: ",registro);
				
			4: 
				bandera <- Falso;
		FinSegun
		
		
	Hasta Que bandera = Falso
	
	
	
	
	
FinProceso






