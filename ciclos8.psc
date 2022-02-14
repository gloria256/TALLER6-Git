//PseInt-ciclos, Canteras Nivel 1
//Gloria Stephany Gómez Gómez

//La escuela automovilística "El Maestro" requiere una aplicación que permita registrar 
//a sus clientes en los cursos de enseñanza automovilística y establecer quienes lo han 
//aprobado para continuar con el trámite de adquirir la licencia de conducción. Para cada 
//usuario se debe permitir registrar su ingreso al curso, consultar usuarios que hayan presentado 
//el curso y resultados de la prueba del curso (si fueron aprobados o no). Recuerde que el sistema 
//debe terminar cuando el usuario así lo indique. Tenga presente que la escuela tiene capacidad máxima 
//de gestionar 8 usuarios en su totalidad.

Proceso ciclos8
	definir opcion Como Entero;     
	definir usuario Como Caracter;
	definir Nota Como Caracter;
	definir subtexto1 Como Caracter;
	Definir subtexto2 Como Caracter;
	definir registroUsuario Como Caracter;
	definir registroNota Como Caracter;
	definir registro Como Caracter;
	definir cont Como Entero;
	definir cont1 Como Entero;
	definir cont2 Como Entero;
	definir cont3 Como Entero;
	definir cont4 Como Entero;
	definir cont5 Como Entero;
	definir cont6 Como Entero;
	definir bandera Como Logico;
	
	registroUsuario <- "";
	registroNota <- "";
	cont6 <- 1;
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
					escribir "Ingrese su usuario:";
					leer usuario;	
					registroUsuario <- Concatenar(registroUsuario,Concatenar(usuario,","));
					
					escribir "Ingrese su nota:";
					leer nota;
					registroNota <- Concatenar(registroNota,Concatenar(nota,","));
					
					Limpiar Pantalla;
				sino
					escribir "No se puede registrar más usuarios, capacidad máxima para 8";
				FinSi
					
				
			2:
				escribir "Los usuarios que presentaron el curso son: ";
				escribir registroUsuario;
				
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
				
				escribir "El resultado de la prueba del curso es: ";
				escribir registro;
				
			4: 
				bandera <- Falso;
		FinSegun
		
		
	Hasta Que bandera = Falso
	
	
	
	
	
FinProceso






