//PseInt-ciclos, Canteras Nivel 1
//Gloria Stephany G�mez G�mez

SubProceso obtenerInformacion(mensaje,variable Por Referencia)
	escribir mensaje;
	leer variable;
FinSubProceso

Proceso ciclos7_to_funcion
	definir vehiculo,placa,marca,placab Como Caracter;
	definir cliente,nombreCompleto,telefono Como Caracter;
	definir registro,registroPlaca Como Caracter;
	definir opcion,cont,cont1,cont2 Como Entero;
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
					obtenerInformacion("Ingrese placa del veh�culo",placa);
					obtenerInformacion("Ingrese marca del veh�culo",marca);
					obtenerInformacion("Ingrese nombre del due�o",nombreCompleto);
					obtenerInformacion("Ingrese tel�fono",telefono);
					
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
				obtenerInformacion("Ingrese placa del veh�culo: ",placa);
				escribir "el vehiculo ha sido retirado exitosamente";
				
			3:
				obtenerInformacion("Ingrese placa del veh�culo: ",placa);
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





