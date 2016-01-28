/*
Maria Monsegui.
C.I: 19996373.
pr0012*/

%LOGICA.
pr(0012-1,['Numero p, tal que el numero letras en su nombre sea igual al valor de su cifra'], [p=5,'cinco'], 20/20, ['Maria Monsegui']).

% ------------------------------------------------------------------------

pr(0012-2,['Valores de a y b tal que:', a=\=b, (a-1)=(b+1), (a+1)=(2*b)], [a=7, b=5], 20/20, ['Maria Monsegui']).


% Se puede preguntar directamente a prolog desde la consola, "cargando"
% la libreria :- use_module(library(clpfd)). e ingresando las
% especificaciones.

:- use_module(library(clpfd)).

pr(0012-3,['(X,Y) | X=|=Y, (X-1)=(Y+1), (X+1)=(2*Y)'], [X,Y], 20/20, ['Maria Monsegui']):- encuentre(X,Y).

encuentre(X,Y):-
	[X,Y] ins 1..100,
	X #\= Y,
	X-1 #= Y+1,
	X+1 #= 2*Y.

% ------------------------------------------------------------------------

% aqui hay una forma de agrupar las tablas en una sola pr.
% hasta ahora solo agregue las tablas de "y","o" e "implica"

pr(0012-4,['tablas',X,Y,Relacion],[Respuesta],20/20,'Maria Monsegui'):-
	tabla(X,Y,Relacion,Respuesta).

%Definimos de las tabla/relaciones.
and('verdad','verdad','verdad').
and('verdad','falso','falso').
and('falso','verdad','falso').
and('falso','falso','falso').

or('verdad','verdad','verdad').
or('verdad','falso','verdad').
or('falso','verdad','verdad').
or('falso','falso','falso').

implica('verdad','verdad','verdad').
implica('verdad','falso','falso').
implica('falso','verdad','verdad').
implica('falso','falso','verdad').


%X,Y = valores, R= Relacion entre los dos, Z=Resultado
%Relacion: y, o, implica, etc.

tabla(X,Y,R,Z):-
	R='y',and(X,Y,Z),nl,
	write(X),tab(2),
	write(R),tab(2),
	write(Y),tab(1),
	write('='),tab(1),
	write(Z), nl.

tabla(X,Y,R,Z):-
	R='o', or(X,Y,Z),nl,
	write(X),tab(2),
	write(R),tab(2),
	write(Y),tab(1),
	write('='),tab(1),
	write(Z), nl.

tabla(X,Y,R,Z):-
	R='implica', implica(X,Y,Z),nl,
	write(X),tab(2),
	write('=>'),tab(2),
	write(Y),tab(1),
	write('='),tab(1),
	write(Z), nl.


% ------------------------------------------------------------------------
%COMBINATORIA
%26-01-2015


pr(0012-5,['Concepto','Combinatoria'],['La Combinatoria es una rama de las matemáticas cuyo objeto es estudiar las posibles agrupaciones de objetos que podemos llevar a cabo de un modo rápido teniendo en cuenta las relaciones que deben existir entre ellas' ],20/20,'Maria Monsegui').


pr(0012-6,['¿A qué se llama factorial de un número?'],['Factorial de un número es el producto de todos los factores decrecientes a partir de él hasta llegar a la unidad.'],20/20,'Maria Monsegui').



pr(0012-7,['Combinatoria','De cuantas formas distintas pueden sentarse ocho personas en una fila de butacas'],R, 20/20, 'Maria Monsegui'):- respuesta(R).

respuesta(R):- R= 40320,
	       write('La respuesta es correcta si, y solo si, se incluyen todos los elementos y no se repiten entre ellos.'), nl,
	       write('R= 8! = 1*2*3*4*5*6*7*8 = 40320').

respuesta(R):- R\= 40320,
	       write('La respuesta es incorrecta.'), nl,
               write('Para hallar las diferentes combinaciones, se halla la permutacion de la cantidad de personas.'),nl,
	       write('R= 8! = 1*2*3*4*5*6*7*8 = 40320. Esto solo es posible si se incluyen todos los elementos y no se repiten entre ellos.').




pr(0012-8,['Combinatoria','Se tienen 7 libros y solo 3 espacios en una biblioteca. ?De cuantas maneras se pueden colocar 3 libros elegidos aleatoriamente?.'],[R,A],20/20,'Maria Monsegui'):- respuest(R,A).

% en la clausula respuesta(R,A), R = respuesta, A= Analisis. Se responde
% "s" si quiere saber el analisis del problema. Si no,
% debera colocar "n".
%

respuest(R,A):- R= 210, A='n',
	       write('La respuesta es correcta.').

respuest(R,A):- R= 210, A='s',
	       write('La respuesta es correcta.'), nl,
	       write('Analizando el problema. Se elige aleatoriamente un primer libro y se coloca en el primer puesto, quedando 6 libros posibles para colocar en el segundo puesto, y finalmente 5 libros posibles para colocar en el tercer puesto.'), nl,
	       write('Por lo tanto las distintas maneras en que se pueden llenar los 3 puestos en la biblioteca es: 7*6*5 = 210').

respuest(R,A):- R\= 210, A='n',
	       write('La respuesta es incorrecta.').

respuest(R,A):- R\= 210, A='s',
	       write('La respuesta es incorrecta.'), nl,
               write('Analizando el problema. Se elige aleatoriamente un primer libro y se coloca en el primer puesto, quedando 6 libros posibles para colocar en el segundo puesto, y finalmente 5 libros posibles para colocar en el tercer puesto.'), nl,
	       write('Por lo tanto las distintas maneras en que se pueden llenar los 3 puestos en la biblioteca es: 7*6*5 = 210').

%--------------------------------------------------------------
%Libreria Clpfd
%Una forma mas general de encontrar X numero.
% Enocontrar X numeros que cumplas las condiciones menor que, mayor que
% y diferente que. Estas relaciones se van a escribir en R1,R2 o R3.
% Se leeria: X relacion1 con A, X, relacion2 con B, X relacion3 con C.
%

:- use_module(library(clpfd)).


menor(A,B):- A#<B.
mayor(A,B):- A#>B.
diferente(A,B):- A#\=B.

pr(0012-9,['encuentre X numero tal que:',X,R1,A,R2,B,R3,C],[X],20/20,'Maria Monsegui'):- encuentre(X,R1,A,R2,B,R3,C).

encuentre(X,R1,A,R2,B,R3,C):-
	[X] ins 1..100,
	R1='mayor',
	R2='menor',
	R3='diferente',
	mayor(X,A), menor(X,B), diferente(X,C),
	label([X]).

encuentre(X,R1,A,R2,B,R3,C):-
	[X] ins 1..100,
	R1='menor',
	R2='mayor',
	R3='diferente',
	mayor(X,B), menor(X,A), diferente(X,C),
	label([X]).


encuentre(X,R1,A,R2,B,R3,C):-
	[X] ins 1..100,
	R1='diferente',
	R2='mayor',
	R3='menor',
	mayor(X,B), menor(X,C), diferente(X,A)
	,label([X]).

encuentre(X,R1,A,R2,B,R3,C):-
	[X] ins 1..100,
	R1='diferente',
	R2='menor',
	R3='mayor',
	mayor(X,C), menor(X,B), diferente(X,A),
	label([X]).

encuentre(X,R1,A,R2,B,R3,C):-
	[X] ins 1..100,
	R1='menor',
	R2='diferente',
	R3='mayor',
	mayor(X,C), menor(X,A), diferente(X,B),
	label([X]).

encuentre(X,R1,A,R2,B,R3,C):-
	[X] ins 1..100,
	R1='mayor',
	R2='diferente',
	R3='menor',
	mayor(X,A), menor(X,C), diferente(X,B),
	label([X]).

%---------------------------------------------------------------------
%Combinatoria: Permutaciones sin repeticion de N elementos.

pr(0012-10,['Combinatoria','De cuantas formas distintas pueden
ordenarse',N, 'libros en un estante'],[R], 20/20, 'Maria Monsegui'):- respuesta(N,R).

respuesta(N,R):- N>0,
	write('Analizando el problema por partes:'),nl,
	write('<De cuantas formas distintas...>, esto nos idica que si importa el orden en el cual se van a ordenar los libros.'),nl,
	write('<...pueden ordenarse los libros en un estante>, esto nos indica que todos los elementos (libros) se van a utilizar.'), nl,
	write('Caemos en una: Permutacion sin repeticion. Para resolver este ejercicios aplicamos la formula: P(n): n!, siendo (n) el numero de elementos. Obteniendo:'), permuta_sin(N,R).



permuta_sin(0,1).
permuta_sin(N,R):- N1 is N-1, permuta_sin(N1,R1), R is N*R1.

%---------------------------------------------------------------------
% Combinatoria, Ejercicio, hallar cuantos numeros de N cifras, se pueden
% formar con M digitos.
% Suponiendo que entre los M digitos no hay repeticiones.

pr(0012-11,['Combinatoria','¿Cuántos números de', N,'cifras se puede formar con', M,'dígitos:'],[R], 20/20, 'Maria Monsegui'):- respuesta(N,M,R).

respuesta(N,M,R):- N>0, M>0 , write('Siempre que hablemos de cifras numericas, estamos hablando de un problema donde SI importa el orden, (dado que 123 no es lo mismo que 312), y si pueden existir repeticion entre los numeros.'), nl, write('En este caso, caemos en una: Variacion con repeticion. Para resolver este ejercicios aplicamos la formula:, VR: n^(m). Siendo (n) el numero de elementos y m el numero de cifras que puede tener este numero . Obteniendo:'), varia_con(N,M,R).

varia_con(_,0,1).
varia_con(N,M,R):- R is N^M.

% ------------------------------------------------------------------------

pr(0012-12,['Combinatoria','Con el sistema Morse (Punto y raya), ¿cuántas señales distintas se pueden enviar, usando como máximo 4 pulsaciones?'],[R], 20/20, 'Maria Monsegui'):- respuesta(R).

respuesta(R):-  write('Analizando este ejercicio observamos:'),nl,
	write('-El numero total de elementos: 2. (. o -)'),nl,
	write('-Si importa en orden, ya que no es lo mismo .-. a --.'),nl,
	write('-Se pueden repetir los simbolos.'),nl,
	write('-Nos indican que hay un maximo de 4 pulsaciones, mas no es obligatorio. Asi que se exsten 4 variaciones distintas de acuerdo al numero de pulsaciones utilizadas.'),nl,
	write('En este ejercicio estamos en: Variaciones con repeticion, para resolver utilizamos la formula: VR(n,m) = n^(m), con n= numero de elementos(en este caso 2), y m= el numero de pulsaciones.'),nl,
	write('Si se utiliza 1 pulsacion: '),varia_con(2,1,R1), write(R1), nl,
	write('Si se utiliza 2 pulsaciones: '),varia_con(2,2,R2), write(R2), nl,
        write('Si se utiliza 3 pulsaciones: '),varia_con(2,3,R3), write(R3), nl,
	write('Si se utiliza 4 pulsaciones: '),varia_con(2,4,R4), write(R4), nl,
	write('Al final, se suman todas las variaciones, y obtenemos: '), R is R1+R2+R3+R4.

varia_con(_,0,1).
varia_con(N,M,R):- R is N^M.


%----------------------------------------------------------------------
% Este es el mismo ejercicio de arriba, pero ahora podemos ingresar el
% numero maximo de pulsaciones que deseamos.
%

pr(0012-13,['Combinatoria','Con el sistema Morse (Punto y raya), ¿cuántas señales distintas se pueden enviar, usando como máximo', M ,'pulsaciones?'],[R], 20/20, 'Maria Monsegui'):- respuesta(M,R).

respuesta(M,R):- write('Analizando este ejercicio observamos:'),nl,
	write('-El numero total de elementos: 2. (. o -)'),nl,
	write('-Si importa en orden, ya que no es lo mismo .-. a --.'),nl,
	write('-Se pueden repetir los simbolos.'),nl,
	write('-Nos indican que hay un maximo de pulsaciones, eso quiere decir que se pueden utilizar una o todas las pulsaciones. Asi que existen variaciones distintas de acuerdo al numero de pulsaciones utilizadas.'),nl,
	write('-Se resuelven las variaciones para cada pulsacion y se suman.'),
	varia_con(2,M,R1),
	write('Obteniendo:'), R is R1-1.

varia_con(2,0,1).
varia_con(2,M,R):- M1 is M-1, varia_con(2,M1,R2), R1 is (2^M), R is R2+R1.



















