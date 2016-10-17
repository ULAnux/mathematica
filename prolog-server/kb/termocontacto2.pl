/*
	Eloy Jose Araujo Olivares
	C.I. V-23781044

	Termocontacto de 1 velocidad y llave de contacto:
	Si la llave de contacto está permitiendo el paso de corriente y el circuito está abierto y la temperatura es mayor que 80°C entonces cierra el circuito.
	Si la llave de contacto está permitiendo el paso de corriente y el circuito está cerrado y la temperatura es menor que 60°C entonces abre el circuito.
	(Para Mayor Informacion ver archivo "termocontacto.pdf")
*/

	cierra_circuito(Llave, Estado, Temperatura):-Llave==cerrado, Estado==abierto, Temperatura>80.
	abre_circuito(Llave, Estado, Temperatura):-Llave==cerrado, Estado==cerrado, Temperatura<60.

/*
	Prueba:

	?- cierra_circuito(cerrado, abierto, 90).
	true.

	?- cierra_circuito(abierto, abierto, 90).
	false.

	?- cierra_circuito(cerrado, cerrado, 100).
	false.

	?- abre_circuito(cerrado, cerrado, 55).
	true.

	?- abre_circuito(cerrado, cerrado, 55).
	true.

	?- abre_circuito(abierto, cerrado, 55).
	false.

	?- abre_circuito(cerrado, abierto, 70).
	false.
*/
