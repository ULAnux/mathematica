/*
	Eloy Jose Araujo Olivares
	C.I. V-23781044

	Termocontacto de 1 velocidad (Ejercicio visto en clase):
	Si el circuito está abierto y la temperatura es mayor que 80°C entonces cierra el circuito.
	Si el circuito está cerrado y la temperatura es menor que 60°C entonces abre el circuito.
	(Para Mayor Informacion ver archivo "termocontacto.pdf")
*/

	cierra_circuito(abierto, Temperatura):-Temperatura>80.
	abre_circuito(cerrado, Temperatura):-Temperatura<60.

/*
	Prueba:

	?- cierra_circuito(abierto, 90).
	true.

	?- cierra_circuito(abierto, 70).
	false.

	?- cierra_circuito(cerrado, 90).
	false.

	?- abre_circuito(cerrado, 90).
	false.

	?- abre_circuito(abierto, 50).
	false.

	?- abre_circuito(cerrado, 50).
	true.
*/
