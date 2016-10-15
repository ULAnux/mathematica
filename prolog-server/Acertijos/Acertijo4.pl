/*  
http://wiki.clarolab.com/thread/1203

El acertijo de Einstein:

Tenemos 5 casas de cinco colores diferentes y en cada una de ellas vive una persona de una nacionalidad diferente.
Cada uno de los dueños bebe una bebida diferente, fuma una marca de cigarrillos diferente y tiene una mascota diferente.
Tenemos las siguientes claves:
	El británico vive en la casa roja.
	El sueco tiene un perro.
	El danés toma té.
	El alemán fuma prince.
	El noruego vive junto a la casa azul.
	El noruego vive en la primera casa.
	La casa verde esta a la izquierda de la blanca.
	El dueño de la casa verde toma café.
	La persona que fuma Pall Mall tiene un pájaro.
	El dueño de la casa amarilla fuma Dunhill.
	La persona que tiene un caballo vive junto a la que fuma Dunhill.
	El que vive en la casa del centro toma leche.
	La persona que fuma Brends vive junto a la que tiene un gato.
	El que fuma Bluemasters bebe cerveza.
	El que fuma Brends tiene un vecino que toma agua.

La pregunta:
¿Quién es el dueño de los peces?*/ 


/******************************************************************************/


% Este predicado intenta coincidir pares de vecinos.

vecino_izq([V|[Vt|T]],Vecino_Izq,Vecino_Der):-
	(
		V = Vecino_Izq,
		Vt = Vecino_Der
	);
vecino_izq([Vt|T],Vecino_Izq,Vecino_Der)
.
% Para los datos en que no especifica si el vecino es izquierdo o derecho, este predicado prueba con ambos.
vecino([V|T],Pista1,Pista2):-
		vecino_izq([V|T],Pista1,Pista2);
		vecino_izq([V|T],Pista2,Pista1)

.
% Este procedimiento coincide cada casa de acuerdo a las pistas dadas.

casa(Casa):-
	Casa = [
		[1,_,noruego,_,_,_],
		[2,azul,_,_,_,_],
		[3,_,_,leche,_,_],
		[4,_,_,_,_,_],
		[5,_,_,_,_,_]
	],

	member([_,roja,ingles,_,_,_],Casa),
	member([_,_,sueco,_,perro,_],Casa),
	member([_,_,danes,te,_,_],Casa),
	vecino_izq(Casa,[_,verde,_,_,_,_],[_,blanca,_,_,_,_]),
	member([_,verde,_,cafe,_,_],Casa),
	member([_,_,_,_,pajaro,pallmall],Casa),
	member([_,amarilla,_,_,_,dunhill],Casa),
	vecino(Casa,[_,_,_,_,_,blend],[_,_,_,_,gato,_]),
	vecino(Casa,[_,_,_,_,caballo,_],[_,_,_,_,_,dunhill]),
	member([_,_,_,cerveza,_,bluemaster],Casa),
	member([_,_,aleman,_,_,prince],Casa),
	vecino(Casa,[_,_,_,_,_,blend],[_,_,_,agua,_,_]),
	member([_,_,_,_,peces,_],Casa)
.
% Finalmente, para responder al problema:
mascota(Mascota,Persona):-
	casa(Casa),
	member([_,_,Persona,_,Mascota,_],Casa).


%Ejemplos: 
	% mascota(peces,Quien). 
	% mascota(peces,X). 

 %También se puede preguntar por el dueño de las otras mascotas, ejecutando:
	
	%mascota(perro,Quien).
	%mascota(pajaro,Quien)
	%mascota(caballo,Quien)
	%mascota(gato,Quien)






