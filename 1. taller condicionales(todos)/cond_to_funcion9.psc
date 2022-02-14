//PseInt-condicionales, Canteras Nivel 1
//Gloria Stephany Gómez Gómez

Proceso cond_to_funcion9
	definir figura Como Entero;
	definir largo Como Real;
	definir alto Como Real;
	Definir base Como Real;
	Definir base1 Como Real;
	Definir base2 Como Real;
	
	mostrarMenu(figura);
	segun figura hacer
		1:
			calcularArea("Ingrese largo: ","Ingrese alto: ","el área del rectángulo es:",largo,alto,base2,1);
		2: 
			calcularArea("Ingrese base: ","Ingrese alto: ","el área del triángulo es:",base,alto,base2,2);
		3:
			calcularArea("Ingrese base: ","Ingrese alto: ","el área del trapecio es:",base1,base2,alto,3);			
	FinSegun
FinProceso


SubProceso mostrarMenu(figura Por Referencia)
	escribir "ingrese la figura geométrica";
	escribir "1. rectángulo";
	escribir "2. triángulo";
	escribir "3. trapecio";
	leer figura;
FinSubProceso

SubProceso capturarInformacion(mensaje, variable Por Referencia)
	escribir mensaje;
	leer variable;
FinSubProceso

SubProceso calculoArea(mensaje, variable Por Referencia)
	escribir mensaje;
	leer variable;
FinSubProceso

SubProceso calcularArea(mensaje1,mensaje2,mensaje3,var1 Por Referencia,var2 Por Referencia,var3 Por Referencia,ind)
	Definir area Como Real;
	capturarInformacion(mensaje1, var1);
	capturarInformacion(mensaje2, var2);
	segun ind Hacer
		1:
			area <- var1*var2;
			escribir mensaje3,area;
		2: 
			area <- (var1*var2)/2;
			escribir mensaje3,area;
		3:
			capturarInformacion("Ingrese alto: ", var3);
			area <- ((var1+var2)*var3)/2;
			escribir mensaje3,area;			
	FinSegun
FinSubProceso

