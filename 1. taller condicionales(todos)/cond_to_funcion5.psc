//PseInt-condicionales, Canteras Nivel 1
//Gloria Stephany Gómez Gómez

Proceso  cond_to_funcion5
	definir usuario Como Caracter;
	definir opcionProducto Como Entero;
	
	escribir "Ingrese nombre usuario:";
	leer usuario;
	
	mostrarMenu(opcionProducto);
	accion(opcionProducto);
FinProceso

SubProceso mostrarMenu(opcionProducto Por Referencia)
	escribir "Ingrese opción de compra producto:";
	escribir "1 compra de producto";
	escribir "2 consulta de precios por producto";
	escribir "3 devoluciones";
	leer opcionProducto;
FinSubProceso

SubProceso accion(opcionProducto)
	segun opcionProducto hacer
		1:
			escribir "pelicula comprada";
		2:
			escribir "no tenemos productos disponibles";
		3:
			escribir "devolución exitosa";
	FinSegun
FinSubProceso


