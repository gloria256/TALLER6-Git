//PseInt-ciclos, Canteras Nivel 1
//Gloria Stephany G�mez G�mez

Proceso ciclos7_to_funcion
	definir vehiculo Como Caracter;
	definir placa Como Caracter;
	definir marca Como Caracter;
	definir placab Como Caracter;
	definir cliente Como Caracter;
	definir nombreCompleto Como Caracter;
	definir telefono Como Caracter;
	definir opcion Como Entero;
	definir registro Como Caracter;
	definir registroPlaca Como Caracter;
	definir cont Como Entero;
	definir cont1 Como Entero;
	definir cont2 Como Entero;
	definir bandera Como Logico;

	bandera <- Verdadero;
	registro <- "";
	registroPlaca <- "";
	placab<- "";
	cont1 <- 0;
	cont2 <- 1;

	Repetir	
		
		escribir "Men� de usuario";
		escribir "1. Ingresar parqueadero";
		escribir "2. Retirar del parqueadero";
		escribir "3. Consultar veh�culo";
		escribir "4. Ver cantidad de vehiculos";
		escribir "5. salir";
		
		
		leer opcion;
		Segun opcion hacer
			1:
				si cont2 <= 5 entonces
					escribir "Ingrese placa del veh�culo";
					leer placa;	
					escribir "Ingrese marca del veh�culo";
					leer marca;	
					escribir "Ingrese nombre del due�o";
					leer nombreCompleto;
					escribir "Ingrese tel�fono";
					leer telefono;
					
					vehiculo <- Concatenar(placa,Concatenar(",",marca));
					cliente <- Concatenar(nombreCompleto,Concatenar(",",telefono));
					
					registro <- Concatenar(registro,Concatenar(vehiculo,Concatenar(",",Concatenar(cliente," - "))));
					registroPlaca <- Concatenar(registroPlaca,Concatenar(placa,","));
					
					cont2 <- cont2+1;
					Limpiar Pantalla;					
				sino
					escribir "parqueadero est� lleno, no se puede registrar ya hay 5 veh�culos";
				FinSi
				
			2:
				escribir "Ingrese placa del veh�culo: ";
				leer marca;
				
				escribir "el vehiculo ha sido retirado exitosamente";
				
			3:
				escribir "Ingrese marca del veh�culo: ";
				leer placa;
				para cont<-1 Hasta Longitud(registroPlaca) con paso 1 Hacer
					si SubCadena(registroPlaca,cont,cont)="," Entonces
						si placa = SubCadena(registroPlaca,cont1,cont-1) Entonces
							placab <- SubCadena(registroPlaca,cont1,cont-1);
						FinSi
						cont1<-cont+1;
					FinSi
				FinPara
				
				si placa = placab Entonces
					escribir "El veh�culo se encuentra en el parqueadero";
				SiNo
					escribir "El veh�culo no se encuentra en el parqueadero";
				FinSi
				
			4:
				escribir "vehiculos registrados:";
				escribir registro;
				
			5: 
				bandera <- Falso;
		FinSegun
		
		
	Hasta Que bandera = Falso
	
	
	
	
	
FinProceso





