%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%	file: problemalogico.pl                                                     %
%	name: Miguel Méndez																			 %
%	matter: Matemáticas Discretas                                               %
%  http://juankenny.blogspot.com/2010/10/lenguajes-l-prolog_1072.html	       %		
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

/*
	Un alumno de ITS, debido al nerviosismo del primer día de clase, ha anotado 
	el nombre de sus profesores (Elisa, Fernando y Carlos), las asignaturas que
	se imparten (Lógica, Programación y Matemáticas) y el día de la semana de las
	distintas clases (lunes, miércoles y viernes), pero sólo recuerda que:

	- La clase de Programación, impartida por Elisa, es posterior a la de Lógica
	- A Carlos no le gusta trabajar los lunes, día en el que no se imparte Lógica

	Ayudale a relacionar cada profesor con su asignatura, así como el día de la 
	semana que se imparte (Sabemos que cada profesor imparte una única asignatura
	y que las clases se dan en días diferentes)
*/

% Tenemos 3 materias

materia(logica).
materia(programacion).
materia(matematicas).

% Tenemos 3 profesores

profesor(elisa).
profesor(fernando).
profesor(carlos).

% Tenemos 3 dias

dia(lunes).
dia(miercoles).
dia(viernes).

% Relaciones

/* 
	-elisa imparte programacion 
*/

imparte(elisa,programacion).

/* 
	-el profesor X, a excepcion de elisa; y existe una materia Y. Quitando a 
	elisa de este conjunto porque ya sabemos que clase imparte, además recur-
	sivamente quitaremos el curso que imparte elisa 
*/

imparte(X, Y) :- profesor(X), X\=elisa, materia(Y), imparte(elisa,Z), Z\=Y.
 
/*
	-carlos trabaja algún día X, a excepción del lunes
*/

trabaja(carlos,X) :- dia(X), X\=lunes.

/* 
	-el profesor X, quitando a carlos, un dia Z. Quitamos a carlos porque ya
	sabemos que lunes no va y los miercoles porque carlos no va lunes y el 
	viernes es de elisa 
*/

trabaja(X, Z) :- profesor(X), X\=carlos, dia(Z), Z\=miercoles.

/* 
	-logica se imparte el dia Z, si ese dia no es lunes o viernes; porque el
	lunes no aplica y el viernes tampoco puesto que sabemos hay una clase 
	delante de ella 
*/

clase(logica,Z) :- dia(Z), Z\=lunes, Z\=viernes.

/*
	-programación se da un día Z, si ese día no es lunes; porque sabemos que
	hay una clase anterior a ella. Recursivamente quitamos el día en el que 
	lógica puede impartirse 
*/
 
clase(programacion,Z) :- dia(Z), Z\=lunes, clase(logica,W), W\=Z.

/* 
	-la materia Y que no sea lógica o programación, y cualquier día de la 
	semana que no sean los días en que se imparte lógica y programación 
*/

clase(Y,Z) :- materia(Y), Y\=logica, Y\=programacion, clase(logica,W), clase(programacion,Q), dia(Z), W\=Z, Q\=Z.


% El alumno del ITS puede recordar cada profesor con su asignatura, asi como
  tambien el dia que se imparte realizando la siguiente consulta: 
  "imparte(X,Y),trabaja(X,Z),clase(Y,Z)."
