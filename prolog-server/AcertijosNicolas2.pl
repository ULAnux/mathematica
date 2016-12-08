/*

		                Las mujeres y sus trabajos

	Clara, Luisa, María y Nélida son cuatro mujeres que aman sus trabajos.
	Ellas trabajan como diseñadora de moda, florista, jardinera y directora de
	orquesta. Cada mujer tiene un solo trabajo, y cada trabajo es ocupado por una
	sola mujer. Con las siguientes pistas, encontrar el trabajo realizado por cada
	mujer:
	
	(a) Clara es violentamente alérgica a las plantas.
	(b) Luisa y la florista comparten el departamento
	(c) A María y Luisa les gusta solamente la música rock
	(d) La jardinera, la diseñadora de modas y Nélida no se
	conocen entre sí.
*/

mujer(clara).
mujer(luisa).
mujer(maria).
mujer(nelida).

ocupacion(diseñadora).
ocupacion(florista).
ocupacion(jardinera).
ocupacion(directoraDeOrquesta).

/*	La pista (a) sugiere que Clara no puede tener un trabajo relacionado con plantas ya que es
alérgica a ellas, por lo tanto se pueden inferir los siguientes hechos:
*/

no_es(clara,florista).
no_es(clara,jardinera).

/*	Si Luisa y la florista comparten el departamento, como dice la pista (b), no pueden ser la
misma persona, de lo que se deduce:
*/

no_es(luisa,florista).

/* y de la pista (c) tenemos*/

no_es(luisa,directoraDeOrquesta).
no_es(maria, directoraDeOrquesta).

/*	es decir, ni Luisa ni María pueden ser directoras de orquesta ya que a ellas únicamente les
gusta la música de rock.

Dos hechos más se obtienen de la última pista al suponer que si Nélida no conoce a la
jardinera ni a la diseñadora de modas ella no puede tener tales ocupaciones:
*/

no_es(nelida, jardinera).
no_es(nelida, diseñadora).

/*	Para el primer caso por ejemplo, todo lo
que dice la pista (a) es que Clara es alérgica a las plantas, lo cual es directamente representable
en Prolog de la siguiente manera:
*/

alergica(clara, plantas).

/* tanto la ocupación de jardinera como la de florista están relacionadas con las plantas*/

relacionado(jardinera, plantas).
relacionado(florista, plantas).

/*y además una mujer no puede tener una ocupación que esté relacionada con algo a lo que
es alérgica*/

no_puede(X, Y) :-
alergica(X, Y),
relacionado(Y, X).

/*	En el mismo sentido la pista (c) da cuenta que Luisa y María sólo escuchan música de
rock, es decir*/

solo_escucha(luisa, rock).
solo_escucha(maria, rock).

/* dicho estilo musical es incompatible con la profesión de directora de orquesta*/

incompatibles(directoraDeOrquesta, rock).

/*	y, por otro lado, una mujer que sólo escucha determinada música no puede tener una
ocupación que sea incompatible con dicha música*/

no_puedeser(X,Y) :-
solo_escucha(X,Y),
incompatibles(Y,X).

/* Una pista más sutil dentro del enunciado del problema indicaba que cada mujer tiene un
solo trabajo, y cada trabajo es ocupado por una sola mujer por lo que las cuatro mujeres
elegidas y las cuatro ocupaciones deben ser diferentes entre sí.
*/

diferentes(A, B, C, D) :-
not(A == B),
not(A == C),
not(A == D),
not(B == C),
not(B == D),
not(C == D).

/* y otro predicado respuesta, cuyo sujeto es una lista de pares mujer-ocupación, y que junto
con diferentes garantice que no hay repeticiones:
*/

respuesta([[M1,O1],[M2,O2],[M3,O3],[M4,O4]]) :-
mujer(M1),
mujer(M2),
mujer(M3),
mujer(M4),
ocupacion(O1),
ocupacion(O2),
ocupacion(O3),
ocupacion(O4),
diferentes(M1,M2,M3,M4),
diferentes(O1,O2,O3,O4),
not(no_es(M1,O1)),
not(no_es(M2, O2)),
not(no_es(M3, O3)),
not(no_es(M4, O4)).

/* Ingresando el siguiente predicado en prolog podemos saber la respesta

	?- respuesta(X).
*/

