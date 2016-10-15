/* 
	Eloy Jose Araujo Olivares
	C.I. V-23781044

	Termocontacto de 2 velocidades:
	Si el circuito 1 está abierto y el circuito 2 está abierto y la temperatura es mayor que 80°C entonces cierra el circuito 1 y abre el circuito 2.
	Si el circuito 1 está cerrado y el circuito 2 está abierto y la temperatura es mayor que 100°C entonces abre el circuito 1 y cierra el circuito 2.
	Si el circuito 1 está abierto y el circuito 2 está cerrado y la temperatura es menor que 90°C entonces cierra el circuito 1 y abre el circuito 2.
	Si el circuito 1 está cerrado y el circuito 2 está abierto y la temperatura es menor que 60°C entonces abre el circuito 1 y abre el circuito 2.
*/

	cierra_circuito1(Circuito1, Circuito2, Temperatura):-((Circuito1==abierto,Circuito2==abierto,Temperatura>80);(Circuito1==abierto,Circuito2==cerrado,Temperatura<90)).

	abre_circuito1(Circuito1, Circuito2, Temperatura):-((Circuito1==cerrado,Circuito2==abierto,Temperatura>100);(Circuito1==cerrado,Circuito2==abierto,Temperatura<60)).

	cierra_circuito2(Circuito1, Circuito2, Temperatura):-Circuito1==cerrado,Circuito2==abierto,Temperatura>100.

	abre_circuito2(Circuito1, Circuito2, Temperatura):-((Circuito1==abierto,Circuito2==abierto,Temperatura>80);(Circuito1==abierto,Circuito2==cerrado,Temperatura<90);(Circuito1==cerrado,Circuito2==abierto,Temperatura<60)).

/*
	?- cierra_circuito1(abierto, abierto, 90).
	true ;
	false.

	?- abre_circuito1(cerrado, abierto, 110).
	true ;
	false.

	?- cierra_circuito2(cerrado, abierto, 110).
	true.

	?- abre_circuito2(abierto, abierto, 100).
	true ;
	false.	
*/
