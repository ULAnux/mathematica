% Alex Romero
% este es un ejemplo_de_logica_utilizando_la_funcion_ponens
% Si Maria Tiene Hambre -> Ella come rapido. Si come rapido ->
% Tendra indigestion. Si tiene indigestion -> Toma medicina.

% comenta 000: La idea base es buena. Lo modifiqué imaginando
% una forma de usar el programa. Pero faltan detalles. 
% Maria podría ser una variable

pr(0010-1,[que, pasa, con, maria],[maria, come,rapido],20/20,'Alex Romero') :- 
	pr(_,[que, pasa, con, maria],[maria, tiene, hambre],_,_).
pr(0010-2,[que, pasa, con, maria], [maria, tiene, indigestion], 20/20,'Alex Romero') :- 
	pr(_,[que, pasa, con, maria], [maria, come,rapido],_,_).
pr(0010-3,[que, pasa, con, maria], [maria, toma, medicina], 20/20,'Alex Romero') :- 
	pr(_,[que, pasa, con, maria], [maria, tiene, indigestion],_,_).
pr(0010-4,[que, pasa, con, maria], [maria, tiene, hambre],_,_).

% uso de los parentesis en expresiones matematicas
% Comenta 0000: esto requiere contexto
pr(0010-5,[4+5*10],[54],20/20, 'Alex Romero').
pr(0010-6,[(4+5)*10],[90],20/20, 'Alex Romero').
pr(0010-7,[4+5*10],[90],0/20, 'Alex Romero').
pr(0010-8,[(4+5)*10],[54],0/20, 'Alex Romero').
%Cronograma_de_actividades_y_dsisponibilidad
/*
pr(0010-9,[Lunes,Mañana],[Preparadurias],20/20,'Alex Romero'):- 
	pr(_,[Lunes,Mañana],[No Disponible]).
pr(0010-10,[Lunes,Tarde], [Futbol], 20/20,'Alex Romero').
	pr(_,[Lunes,Tarde],[No Disponible]).

pr(0010-11,[Martes,Mañana],[Sin actividades],20/20,'Alex Romero'):- 
	pr(_,[Martes,Mañana],[Disponible]).
pr(0010-12,[Martes,Tarde], [Trabajo], 20/20,'Alex Romero').
	pr(_,[Martes,Tarde],[No Disponible]).

pr(0010-13,[Miercoles,Mañana],[Clases],20/20,'Alex Romero'):- 
	pr(_,[Miercoles,Mañana],[No Disponible]).
pr(0010-14,[Miercoles,Tarde], [Clases], 20/20,'Alex Romero').
	pr(_,[Miercoles,Tarde],[No Disponible]).

pr(0010-15,[Jueves,Mañana],[Clases],20/20,'Alex Romero'):- 
	pr(_,[Jueves,Mañana],[No Disponible]).
pr(0010-16,[Jueves,Tarde], [Futbol], 20/20,'Alex Romero').
	pr(_,[Jueves,Tarde],[No Disponible]).

pr(0010-17,[Viernes,Mañana],[Clases],20/20,'Alex Romero'):- 
	pr(_,[Viernes,Mañana],[No Disponible]).
pr(0010-18,[Viernes,Tarde], [Clases, Futbol], 20/20,'Alex Romero').
	pr(_,[Viernes,Tarde],[No Disponible]).


pr(0010-19,[Sabado,Mañana],[Sin Actividades],20/20,'Alex Romero'):- 
	pr(_,[Sabado,Mañana],[Disponible]).
pr(0010-20,[Sabado,Tarde], [Sin Activdades], 20/20,'Alex Romero').
	pr(_,[Sabado,Tarde],[Disponible]).

pr(0010-21,[Domingo,Mañana],[Descanso],20/20,'Alex Romero'):- 
	pr(_,[Domingo,Mañana],[No Disponible]).
pr(0010-22,[Domingo,Tarde], [Sin actividades], 20/20,'Alex Romero').
	pr(_,[Domingo,Tarde],[Disponible]).
*/


%Conjuntos

pr(00010-23, ['Union de dos Conjuntos A , B'], ['La union de dos conjuntos A , B se representa como todos los elementos pertenecientes tanto al conjunto A como al conjunto B}.'], 20/20,'Alex Romero').

pr(00010-24, ['Interseccion de dos Conjuntos A , B'], ['La interseccion de dos conjuntos A , B se representa como todos los elementos comunes pertenecientes tanto al conjunto A como al conjunto B, es decir todos aquellos elementos que se encuentren repetidos en los conjuntos A y B}.'], 20/20,'Alex Romero').

pr(00010-25, ['Completo de los Conjuntos A U B'], ['El complemento de dos conjuntos, sean estos A U B, no es mas que el universo de todos los elementos que NO pertenecen a dichos conjuntos}.'], 20/20,'Alex Romero').

pr(00010-26, ['Completo de los Conjuntos A n B'], ['El complemento de dos conjuntos, sean estos A n B, no es mas que el universo de todos los elementos que NO son comunes entre dichos conjuntos, es decir los elementos que no son comunes entre A y B sumado a todos los elementos que no pertenecen a los conjuntos A y B}.'], 20/20,'Alex Romero').

pr(00010-27, ['Conjunto,Semana,Dias'], ['El conjunto de los dias de la semana se define, S = {Lunes,Martes,Miercoles,Jueves,Viernes,Sabado,Domingo}.'], 20/20,'Alex Romero').

pr(00010-28, ['Conjunto,Meses,Año'], ['El conjunto de los meses que conforman el año se define, A = {Enero,Febrero,Marzo,Abril,Mayo,Junio,Julio,Agosto,Septiembre,Octubre,Noviembre,Diciembre}.'], 20/20,'Alex Romero').

%Algebra_de_numeros_amigos_y_numeros_perfectos

pr(00010-29,['Que pasa si un numero es amigo de si mismo?'],['Si un numero es amigo de si mismo es considerado un numero perfecto.'], 20/20, 'Alex Romero').

pr(00010-30,['Numeros Perfectos'],['Un número perfecto es un número natural que es igual a la suma de sus divisores propios positivos, sin incluirse él mismo. Dicho de otra forma, un número perfecto es aquel que es amigo de sí mismo'], 20/20, 'Alex Romero').

pr(00010-31,['6 es un numero perfecto ?'],['Si porque sus divisores propios son 1, 2, 3, y 6; entonces excluyendose el mismo tenemos que:  1 + 2 + 3 = 6. Siendo un numero perfecto. '], 20/20, 'Alex Romero').

pr(00010-32,['Numeros Amigos'],['Dos números amigos son dos números enteros positivos a y b tales que la suma de los divisores propios de uno es igual al otro numero y viceversa'], 20/20, 'Alex Romero').

pr(00010-33,['Son 220 y 284 Numeros Amigos?'],['Si ya que: Los divisores propios de 220 son 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 y 110, que suman 284; y los divisores propios de 284 son 1, 2, 4, 71 y 142, que suman 220.'], 20/20, 'Alex Romero').


 
%Hallar_el_numero_menor_entre_dos_numeros

menor(X,Y,Z) :- X>Y, Z is Y.
menor(X,Y,Z) :- Y>X, Z is X.

pr(00010-34,['El numero menor entre los dos numeros enteros', X, Y,=],[Z], 20/20, 'Alex Romero'):-menor(X,Y,Z).

%Obtener_el_residuo_de_dos_numeros_enteros_positivos

residuo(X,Y,Z) :- X<Y, Z is X.
residuo(X,Y,Z) :- X1 is X-Y, residuo(X1,Y,Z1), Z is Z1.

pr(00010-35,['El residuo de dos numeros enteros',X, Y,=],[Z], 20/20, 'Alex Romero'):- residuo(X,Y,Z), Z>0.


%Comprobacion_de_si_un_numero_es_perfecto

esdivisor(A,B,R):- 0=:= A mod B, R is B.            
      
esdivisor(A,B,R):- 0=\= A mod B, R is 0.

perfecto(N):-   perf(N,1,0).    /* es el indice que ira de 1 a N, 0 es la suma temporal */

perf(N,N,N).   /*Si el resultado de las sumas es igual al número es que es perfecto */

perf(N,Ind,R):- 
Ind < N,
Ind1 is Ind + 1,
esdivisor(N,Ind,Temp),
R1 is R + Temp,
perf(N,Ind1,R1).

pr(00010-36,['Es X un numero perfecto?',X],[Y], 20/20, 'Alex Romero'):- perfecto(X), Y = 'YES'.


%Calendario de dispnibilidad semanal

disp(_,[lunes,mañana],[no_disponible]).
disp(_,[lunes,tarde],[no_disponible]).
disp(_,[martes,mañana],[disponible]).
disp(_,[martes,tarde],[no_disponible]).
disp(_,[miercoles,mañana],[no_disponible]).
disp(_,[miercoles,tarde],[no_disponible]).
disp(_,[jueves,mañana],[no_disponible]).
disp(_,[jueves,tarde],[no_disponible]).
disp(_,[viernes,mañana],[no_disponible]).
disp(_,[viernes,tarde],[no_disponible]).
disp(_,[sabado,mañana],[disponible]).
disp(_,[sabado,tarde],[disponible]). 
disp(_,[domingo,mañana],[no_disponible]).
disp(_,[domingo,tarde],[disponible]).

pr(00010-37, ['Disponibilidad de la semana', X],[R],20/20,'Alex Romero'):- disp(R,[X]).

%Calcular el factorial de un numero

factorial(N,F) :- N>1, N1 is N-1, factorial(N1,F1), F is N*F1.
factorial(N,F) :- N=1, F is 1.

pr(00010-38,['El fatorial de un numero positivo es: ',X],[Z], 20/20, 'Alex Romero'):- factorial(X,Z).

%Esta pr falta acomodarla
%Comprobacion de si dos numeros son amigos
amig(N,M):- perf(N,N,R), R = M. 

%pr(00010-,['Son X y Y dos numeros amigos ?', X, Y],[Z], 20/20, 'Alex Romero'):- amig(X,Y), amig(Y,X), Z = 'YES'.

