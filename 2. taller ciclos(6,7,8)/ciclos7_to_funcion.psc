//PseInt-ciclos, Canteras Nivel 1
//Gloria Stephany Gómez Gómez

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
		
		escribir "Menú de usuario";
		escribir "1. Ingresar parqueadero";
		escribir "2. Retirar del parqueadero";
		escribir "3. Consultar vehículo";
		escribir "4. Ver cantidad de vehiculos";
		escribir "5. salir";
		
		
		leer opcion;
		Segun opcion hacer
			1:
				si cont2 <= 5 entonces
					obtenerInformacion("Ingrese placa del vehículo",placa);
					obtenerInformacion("Ingrese marca del vehículo",marca);
					obtenerInformacion("Ingrese nombre del dueño",nombreCompleto);
					obtenerInformacion("Ingrese teléfono",telefono);
					
					vehiculo <- Concatenar(placa,Concatenar(",",marca));
					cliente <- Concatenar(nombreCompleto,Concatenar(",",telefono));
					
					registro <- Concatenar(registro,Concatenar(vehiculo,Concatenar(",",Concatenar(cliente," - "))));
					registroPlaca <- Concatenar(registroPlaca,Concatenar(placa,","));
					
					cont2 <- cont2+1;
					Limpiar Pantalla;					
				sino
					escribir "parqueadero está lleno, no se puede registrar ya hay 5 vehículos";
				FinSi
				
			2:
				obtenerInformacion("Ingrese placa del vehículo: ",placa);
				escribir "el vehiculo ha sido retirado exitosamente";
				
			3:
				obtenerInformacion("Ingrese placa del vehículo: ",placa);
				para cont<-1 Hasta Longitud(registroPlaca) con paso 1 Hacer
					si SubCadena(registroPlaca,cont,cont)="," Entonces
						si placa = SubCadena(registroPlaca,cont1,cont-1) Entonces
							placab <- SubCadena(registroPlaca,cont1,cont-1);
						FinSi
						cont1<-cont+1;
					FinSi
				FinPara
				
				si placa = placab Entonces
					escribir "El vehículo se encuentra en el parqueadero";
				SiNo
					escribir "El vehículo no se encuentra en el parqueadero";
				FinSi
				
			4:
				escribir "vehiculos registrados:";
				escribir registro;
				
			5: 
				bandera <- Falso;
		FinSegun
		
		
	Hasta Que bandera = Falso
	
	
	
	
	
FinProceso





