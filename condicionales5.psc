//PseInt-condicionales, Canteras Nivel 1
//Gloria Stephany G�mez G�mez

Proceso  condicionales5
	definir usuario Como Caracter;
	definir opcionProducto Como Entero;
	
	escribir "Ingrese nombre usuario:";
	leer usuario;
	escribir "Ingrese opci�n de compra producto:";
	escribir "1 compra de producto";
	escribir "2 consulta de precios por producto";
	escribir "3 devoluciones";
	leer opcionProducto;
	
	segun opcionProducto hacer
		1:
			escribir "pelicula comprada";
		2:
			escribir "no tenemos productos disponibles";
		3:
			escribir "devoluci�n exitosa";
	FinSegun
FinProceso



