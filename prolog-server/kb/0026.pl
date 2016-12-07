% Codigos en prolog, para la base del conocimiento, matematicas discreta. ULA ve.
% febrero 12, del 2015.
% programador OROZCO MORALES IVANOT ci:24677851.
%los codigos son de mi autoria.

%-------------Indice-----------------------
% calculo de factorial(con desaarrollo) ?-nro_fac(N).
% calculo de factorial(resutado directo) ?-nro_fac2(N).
% calculo de combinatoria ?-nro_combi(M,N).
% calculo de variaciones ?-nro_var(M,N).
% piramide de pascal de base n ?-prmd_pscl(M).
% potencia de E de un numero B ?-nro_pot(B,E).
% compuertas logicas:
% ?-not(X).
% ?-or(X,Y).
% ?-and(X,Y).
% ?-nor(X,Y).
% ?-nand(X,Y).
% ?-xor(X,Y).
% pr y rp (varios, usan para responder los calculos de arriba)
% lecciones (varias)

%--------------NOTA IMPORTANTE-------
% la mayoria de conceptos teorico presentes en las repuestas se hayan en internet, fuentes especificas: wikipedia.org y vitutor.com
%los enunciados y respuestas a los ejercicios se halla en la pagina vitutor.com, algunas repuestan varian de acuerdo a mi criterio de presentarlas.

% escribi las pr pensado en el metodo pregunta respuesta pr-rp
% los codigos que no son de estructura pr-rp, los hice para responder pr, son ncesarios.ejm: factorial, combiantrotia, tablas.. etc
% ademas pueden ser llamado facilmente para crear nuevas pr o responder preguntas (reusar codigo).¿

% la salida  puede ser modificada para mostrar por pantalla o enviar a la pagina o la aplicacion en caso de conectar, asi no hay que modificar todo el codigo sino los hechos out_put().

%-------------------salida---------
out_put(X):- write(X).
out_put([A|B]):- write(A|B). 

%------------------factorial
%-------Escribe factorial en pantalla-------- 
por(E):- E\==0, out_put('x').
fac(F,Fac):- F==0, out_put('='),out_put(Fac).
dis(F,Fac):- F\==0, out_put(F), NF is F-1, \+fac(NF,Fac), por(F), NFac is Fac*NF, dis(NF,NFac).
fac0(N):- N==0, out_put('0!=1').%factorial de cero
nro_fac(N):-Nn is N,\+fac0(N), dis(Nn,N).
%----------------factorial sin desarrolllo
fac2(F,Fac):- F==0,out_put(Fac).
dis2(F,Fac):- F\==0, NF is F-1, \+fac2(NF,Fac), NFac is Fac*NF, dis2(NF,NFac).
nro_fac2(N):-Nn is N,\+fac0(N), dis2(Nn,N).

%-----------------Combinatoria
combi(A,B,C,FA,FB,FC):- A==1, B==1, C==1, Rslt is (FA/(FB*FC)), out_put(Rslt).
% calculo del 3er factorial de la formula combinatoria
fc3(A,B,C,FA,FB,FC):- A==1,B==1,C\==1, NC is C-1, NFC is FC*NC, \+combi(A,B,NC,FA,FB,NFC),fc3(A,B,NC,FA,FB,NFC).
% calculo del 2do factorial de la formula combinatoria
fc2(A,B,C,FA,FB,FC):- A==1, B\==1, NB is B-1, NFB is FB*NB, \+fc3(A,NB,C,FA,NFB,FC),fc2(A,NB,C,FA,NFB,FC).
% calculo del 1er factorial de la formula combinatoria
fc1(A,B,C,FA,FB,FC):- A\==1, NA is A-1, NFA is FA*NA, \+fc2(NA,B,C,NFA,FB,FC), fc1(NA,B,C,NFA,FB,FC).  
% llena las reglas necesaria para la relacion fC()
trans_fc(A,B,C):- FA is A, FB is B, FC is C, fc1(A,B,C,FA,FB,FC).
%casos especiales de combinatoria
combi0(M,N):- M>=0, N==0, out_put(1).
combi1(M,N):- M>0, N==1, out_put(M).
combi3(M,N):- M>0,NM is M-1, N==NM, out_put(M).
combi2(M,N):- M==N,  out_put(1).
nro_combi(M,N):- \+combi0(M,N),\+combi1(M,N),\+combi2(M,N),\+combi3(M,N), A is M, B is N, C is M-N, trans_fc(A,B,C).

%-----------------variaciones
rslt(A,C,FA,FC):- A==1, C==1, Rslt is (FA/FC), out_put(Rslt).
% calculo del 3er factorial de la formula combinatoria
fc2(A,C,FA,FC):-  A==1,C\==1, NC is C-1, NFC is FC*NC, \+rslt(A,NC,FA,NFC),fc2(A,NC,FA,NFC).
% calculo del 1er factorial de la formula combinatoria
fc1(A,C,FA,FC):- A\==1, NA is A-1, NFA is FA*NA, \+fc2(NA,C,NFA,FC), fc1(NA,C,NFA,FC).  
% llena las reglas ecesaria para la relacion fC()
trans_fc(A,C):- FA is A, FC is C, fc1(A,C,FA,FC).
cond(M,N):- M==N, \+nro_fac2(M).
nro_var(M,N):- \+cond(M,N), A is M, C is M-N, trans_fc(A,C).

%-----------potencia B=B2:base, E:exponete
cond2(B,E):- E==1 , out_put(B).
epot(NE,NB):-NE==1, out_put(NB).
pot(B,B2,E):- E\==1, NB is B2*B, NE is E-1,\+epot(NE,NB), pot(B,NB,NE).
nro_pot(B,E):- \+cond2(B,E), B2 is B, pot(B,B2,E).

%--------------Piramide de pascal
cbs(M,N):-  N=<M, \+nro_combi(M,N), out_put(' '),NN is N+1, cbs(M,NN).
nivel(M):- N is 0, cbs(M,N).
alin(M,N):- N<M, out_put(' '), NN is N+1, alin(M,NN).
nvls(M,N):- N=<M, \+alin(M,N), \+nivel(N),nl,NN is N+1, nvls(M,NN).
prmd_pscl(M):- N is 0, nvls(M,N).

%-------------------------Ornden de complejidad
orden_tablas:- out_put('O(1) orden constante'), nl,
		out_put('O(log n) orden logarítmico'),nl,
		out_put('O(n) orden lineal'),nl,
		out_put('O(n log n)'),nl,
		out_put('O(n2) orden cuadrático'),nl,
		out_put('O(na) orden polinomial (a > 2)'),nl,
		out_put('O(an) orden exponencial (a > 2)'),nl,
		out_put('O(n!) orden factorial '),nl.

%-------------------------compuertas logicas
not(X):- \+X.
or(X,Y):-( X ; Y ),!.
and(X,Y):- X , Y,!.
nor(X,Y):- not(or(X,Y)),!.
nand(X,Y):- not(and(X,Y)),!.
xor(X,Y):- or(and(not(X),Y),and(X,not(Y))),!.

%----------------------------------EJERCICIOS o preguntas (pr)
% las estrutura es: una prugunta llama a una respuesta. pr():- rp(). 
pr(0026-1,[que, es , factorial],['Orozco Morales Ivanot, basaqdo en wikipwdia.org']):-rp([que, es , factorial]).
pr(0026-2,[que, es, permutacion],['Orozco Morales Ivanot, basado en vitutor.com']):-rp([que, es, permutacion]).
pr(0026-3,[que, es, combinaciones, combinatoria],['Orozco Morales Ivanot, basado en vitutor.com']):-rp([que, es, combinaciones, combinatoria]).
pr(0026-4,[que, son , variaciones],['Orozco Morales Ivanot, basado en vitutor.com']):-rp([que, son , variaciones]).
pr(0026-5,[calcular,las,permutaciones,X,elementos],['Orozco Morales Ivanot, basado en vitutor.com']):-rp([calcular,las,permutaciones,X,elementos]).
pr(0026-6,[cuantas,formas,distintas,pueden,sentarse,X,personas,una,fila,butacas],['Orozco Morales Ivanot, basado en vitutor.com']):- rp([cuantas,formas,distintas,pueden,sentarse,X,personas,una,fila,butacas]).
pr(0026-7,[cuántas,formas,distintas,pueden,sentarse,X,personas,alrededor,de,una,mesa,redonda],['Orozco Morales Ivanot, basado en vitutor.com']):- rp([cuántas,formas,distintas,pueden,sentarse,X,personas,alrededor,de,una,mesa,redonda]).
pr(0026-8,[cuántos,números,de,X,cifras,se,puede,formar,con,los,dígitos,1, 2, 3, 4, 5],['Orozco Morales Ivanot, basado en vitutor.com']):- rp([cuántos,números,de,X,cifras,se,puede,formar,con,los,dígitos,1, 2, 3, 4, 5]).
pr(0026-9,[de,cuántas,formas,pueden,mezclarse,los,siete,colores,del,arco,iris,tomándo,de,ellos,X],['Orozco Morales Ivanot, basado en vitutor.com']):- rp([de,cuántas,formas,pueden,mezclarse,los,siete,colores,del,arco,iris,tomándo,de,ellos,X]).
pr(0026-10,[a,una,reunión,asisten,X,personas,y,se,intercambian,saludos,entre,todos,cuántos,saludos,se,han,intercambiado],['Orozco Morales Ivanot, basado en vitutor.com']):-rp([a,una,reunión,asisten,X,personas,y,se,intercambian,saludos,entre,todos,cuántos,saludos,se,han,intercambiado]).
pr(0026-11,[de,cuántas,formas,pueden,colocarse,los,11,jugadores,de,un,equipo,de,fútbol,teniendo,en,cuenta,que,el,portero,no,puede,ocupar,otra,posición,distinta,de,la,portería],['Orozco Morales Ivanot']):- rp([de,cuántas,formas,pueden,colocarse,los,11,jugadores,de,un,equipo,de,fútbol,teniendo,en,cuenta,que,el,portero,no,puede,ocupar,otra,posición,distinta,de,la,portería]).
pr(0026-12,[cuántas,diagonales,tiene,un,pentágono,y,cuántos,triángulos,se,puede,formar,con,sus,vértices],['Orozco Morales Ivanot, basado en vitutor.com']):-rp([cuántas,diagonales,tiene,un,pentágono,y,cuántos,triángulos,se,puede,formar,con,sus,vértices]).
pr(0026-13,[que, es ,son, orden, ordenes, de, complejidad],['Orozco Morales Ivanot, basado en vitutor.com']):- rp([que, es ,son, orden, ordenes, de, complejidad]).
pr(0026-14,[que, es, una, compuerta,logica],['Orozco Morales Ivanot, basado en vitutor.com']):- rp([que, es, una, compuerta,logica]).
pr(0026-15,[un, grupo, compuesto, por,X, hombres, y, Y, mujeres, forma, un, comite, de, M, hombres, y, N, mujeres, de, cuantas, formas, puede, formarse, si,puede, pertenecer, a, el, cualquier, hombre, o, mujer],['Orozco Morales Ivanot, basado en vitutor.com']):-rp([un, grupo, compuesto, por,X, hombres, y, Y, mujeres, forma, un, comite, de, M, hombres, y, N, mujeres, de, cuantas, formas, puede, formarse, si,puede, pertenecer, a, el, cualquier, hombre, o, mujer]).
pr(0026-16,[cuatro, libros, distintos, de, matemáticas, seis, diferentes, de, física, y, dos, diferentes, de ,química, se ,colocan, en, un, estante, de ,cuantas, formas, distintas, es, posible, ordenarlos, si, los, libros, de, cada, asignatura, deben, estar, todos, juntos],['Orozco Morales Ivanot, basado en vitutor.com']):- rp([cuatro, libros, distintos, de, matemáticas, seis, diferentes, de, física, y, dos, diferentes, de ,química, se ,colocan, en, un, estante, de ,cuantas, formas, distintas, es, posible, ordenarlos, si, los, libros, de, cada, asignatura, deben, estar, todos, juntos]).
pr(0026-17,[una, persona, tiene, cinco, monedas, de, distintos, valores, cuántas, sumas, diferentes, de, dinero, puede, formar, con, las, cinco, monedas],['Orozco Morales Ivanot, basado en vitutor.com']):- \+rp([una, persona, tiene, cinco, monedas, de, distintos, valores, cuántas, sumas, diferentes, de, dinero, puede, formar, con, las, cinco, monedas]).
pr(0026-18,[cuántos, números, de, M, cifras, diferentes, se, puede, formar, con, N, digitos, diferetes, no, repetidos],['Orozco Morales Ivanot, basado en vitutor.com']):-rp([cuántos, números, de, M, cifras, diferentes, se, puede, formar, con, N, digitos, diferetes, no, repetidos]).
pr(0026-19,[cuántos, números, de, M, cifras, diferentes, se, puede, formar, con, N, digitos],['Orozco Morales Ivanot, basado en vitutor.com']):-rp([cuántos, números, de, M, cifras, diferentes, se, puede, formar, con, N, digitos]).
pr(0026-20,[cuántos, números, de, tres, cifras, diferentes, se, puede, formar, con, los, dígitos, 0, 1, 2, 3, 4, 5],['Orozco Morales Ivanot, basado en vitutor.com']):-rp([cuántos, números, de, tres, cifras, diferentes, se, puede, formar, con, los, dígitos, 0, 1, 2, 3, 4, 5]).
pr(0026-21,[en, una, clase, de, N, alumnos, se, quiere, elegir, un, comité, formado, por, M, alumnos, cuántos, comités, diferentes, se, pueden, formar],['Orozco Morales Ivanot, basado en vitutor.com']):-rp([en, una, clase, de, N, alumnos, se, quiere, elegir, un, comité, formado, por, M, alumnos, cuántos, comités, diferentes, se, pueden, formar]).

%----------------------------------------------respuestas (rp)
rp([que, es , factorial]):- out_put('es el producto de los “n” factores consecutivos desde “n” hasta 1. el factorial de un número se denota por n!.').
rp([que, es, permutacion]):-out_put('Se llama permutaciones de m elementos a las diferentes agrupaciones de esos m elementos de forma que: entran todos los elementos, importa el orden y No se repiten los elementos. Permutaciones de m = m!').
rp([que, es, combinaciones, combinatoria]):-out_put('Se llama combinaciones de m elementos tomados de n en n (m ≥ n) a todas las agrupaciones posibles que pueden hacerse con los m elementos de forma que: No entran todos los elementos. No importa el orden. No se repiten los elementos. se calcula usando factoriales:  m!/(n!(m-n)!').
rp([que, son , variaciones]):- out_put('Se llama variaciones ordinarias de m elementos tomados de n en n (m ≥ n) a los distintos grupos formados por n elementos de forma que: No entran todos los elementos. Sí importa el orden. No se repiten los elementos.').
rp([cuantas,formas,distintas,pueden,sentarse,X,personas,una,fila,butacas]):- \+nro_fac(X),out_put('Formas').
rp([calcular,las,permutaciones,X,elementos]):- nro_fac(X).
rp([cuántas,formas,distintas,pueden,sentarse,X,personas,alrededor,de,una,mesa,redonda]):-out_put('(n-1)! formas, es decir, '),nro_fac(X-1).
rp([cuántos,números,de,X,cifras,se,puede,formar,con,los,dígitos,1, 2, 3, 4, 5]):- \+nro_pot(5,X), out_put('nros').
rp([de,cuántas,formas,pueden,mezclarse,los,siete,colores,del,arco,iris,tomándo,de,ellos,X]):- out_put('calculando el combinatorio de 7 tomo '),out_put(X),out_put(', son: '),\+nro_combi(7,X), out_put(' formas').
rp([a,una,reunión,asisten,X,personas,y,se,intercambian,saludos,entre,todos,cuántos,saludos,se,han,intercambiado]):- out_put('Es equivalente a las distintas formas de tomar 2 de '), out_put(X),out_put(' personas para que se saluden, combinatorio de 2 de '), out_put(X),out_put(' = '), nro_combi(X,2),out_put(' saludos').
rp([a,una,reunión,asisten,X,personas,y,se,intercambian,saludos,entre,todos,cuántos,saludos,se,han,intercambiado]):- out_put('Es equivalente a las distintas formas de tomar 2 de '), out_put(X),out_put(' personas para que se saluden, combinatorio de 2 de '), out_put(X),out_put(' = '), nro_combi(X,2),out_put(' saludos').
rp([de,cuántas,formas,pueden,colocarse,los,11,jugadores,de,un,equipo,de,fútbol,teniendo,en,cuenta,que,el,portero,no,puede,ocupar,otra,posición,distinta,de,la,portería]):- out_put('Disponemos de 10 jugadores que pueden ocupar 10 posiciones distintas.'), \+nro_fac(10), out_put('formas').
rp([cuántas,diagonales,tiene,un,pentágono,y,cuántos,triángulos,se,puede,formar,con,sus,vértices]):-out_put('son '), \+nro_combi(5,2), out_put(' rectas distintas entre dos puntos del pentagono, de las cuales hay que restar las que no son diagonales. serian: '),\+nro_combi(5,2),out_put('-5 diagonales.'),nl, out_put('para formar triangulos serian las distintas forma de tomar 3 puntos de los 5 que forman el pentagono:'), \+nro_combi(5,3),out_put('triangulos') .
rp([que, es ,son, orden, ordenes, de, complejidad]):-out_put('Se dice que O(f(n)) define un "orden de complejidad"'),nl, orden_tablas.
rp([que, es, una, compuerta,logica]):- out_put('Una compuerta lógica, o compuerta lógica, es un dispositivo electrónico con una función booleana. Suman, multiplican, niegan o afirman, incluyen o excluyen según sus propiedades lógicas. Se pueden aplicar a tecnología electrónica, eléctrica, mecánica, hidráulica y neumática. Son circuitos de conmutación integrados en un chip.').
rp([un, grupo, compuesto, por,X, hombres, y, Y, mujeres, forma, un, comite, de, M, hombres, y, N, mujeres, de, cuantas, formas, puede, formarse, si,puede, pertenecer, a, el, cualquier, hombre, o, mujer]):- nl,out_put('comibatorio de '),out_put(X), out_put(' hombres tomo '), out_put(M), out_put(' por las formas de tomar '), out_put(Y), out_put(' mujeres de '), out_put(N), nl, \+nro_combi(M,X),out_put('*'),nro_combi(N,Y). 
rp([cuatro, libros, distintos, de, matemáticas, seis, diferentes, de, física, y, dos, diferentes, de ,química, se ,colocan, en, un, estante, de ,cuantas, formas, distintas, es, posible, ordenarlos, si, los, libros, de, cada, asignatura, deben, estar, todos, juntos]):- nl, out_put('4!*6!*2!*3! = 207360 formas'),nl, out_put('ademas si Solamente los libros de matemáticas deben estar juntos. es 9!*4!').
rp([una, persona, tiene, cinco, monedas, de, distintos, valores, cuántas, sumas, diferentes, de, dinero, puede, formar, con, las, cinco, monedas]):- out_put(' es el combinatorio 1 de 5 mas el combinatorio 2 de 5 mas el combinatorio 3 de 5 mas el combinatorio 4 de 5 mas el combinatorio 5 de 5: '),nl,\+ nro_combi(5,1), out_put('+'), \+nro_combi(5,2), out_put('+'), \+nro_combi(5,3), out_put('+'),\+ nro_combi(5,4), out_put('+'), nro_combi(5,5) .
rp([cuántos, números, de, M, cifras, diferentes, se, puede, formar, con, N, digitos, diferetes, no, repetidos]):- out_put('son las formar que puedes tormar grupos de '), out_put(M), out_put(' del total '), out_put(N),nl, out_put('variacion, de la poblacion '), out_put(N), out_put(' tomo grupos de '), out_put(M), out_put(' = '), nro_var(N,M).  
rp([cuántos, números, de, M, cifras, diferentes, se, puede, formar, con, N, digitos]):- out_put('son las formar que puedes tormar '), out_put(N), out_put(' para el primer digito, '), out_put(N), out_put(' para el segunto, '), out_put(N), out_put(' para el tercero, ....., hasta tormar '), out_put(N), out_put(' para el ultimo digito.'),nl, out_put(N), out_put(' elevado a la '), out_put(M), out_put(' = '), nro_pot(N,M).  
rp([cuántos, números, de, tres, cifras, diferentes, se, puede, formar, con, los, dígitos, 0, 1, 2, 3, 4, 5]):- out_put('Tenemos que separar el número en dos bloques. '), nl, out_put('El primer bloque, de un número, lo puede ocupar sólo uno de 5 dígitos porque un número no comienza por cero'),nl,out_put('El segundo bloque, de dos números, lo puede ocupar cualquier dígito, menos el inicial.'),nl,out_put(' seria entonces: variacion 1 de 5 por la variacion 2 de 5. '),\+nro_var(5,1), out_put('*'), nro_var(5,2).
rp([con, el, punto, raya, del, sistema, morse, cuántas, señales, distintas, se, pueden, enviar, usando, como, máximo, cuatro, pulsaciones]):- out_put('es la sumatoria de las posibles combinaciones, una pulsacion tiene dos valores, dos pulsaciones tienen cuatro valores, asi n pulsaciones tienes 2 a la n valores. Entonces son: '), \+nro_pot(2,1), out_put('+'),\+nro_pot(2,2), out_put('+'),\+nro_pot(2,3), out_put('+'),\+nro_pot(2,4), out_put(' valores.').
rp([en, una, clase, de, N, alumnos, se, quiere, elegir, un, comité, formado, por, M, alumnos, cuántos, comités, diferentes, se, pueden, formar]):- out_put(' el resultado es la combinatoria '),out_put(N), out_put(' de '), out_put(M),out_put(' = '), nro_combi(N,M). 

%--------------------------------------------------lecciones
leccion([permutacion]):- 
out_put('Permutacion'),nl,
pr([que, es , permutacion]), nl,
out_put('Factorial'),nl, 
pr([que, es , factorial]), nl,nl,
 out_put('Ejercicios Resueltos:'),nl,nl,
out_put('- calcular las permutaciones 5 elementos'), nl,
\+pr([calcular,las,permutaciones,10,elementos]),nl,nl,
 out_put('- De cuantas formas distintas pueden sentarse 8 personas una fila de butacas'),nl,
 pr([cuantas,formas,distintas,pueden,sentarse,8,personas,una,fila,butacas]),nl,nl,
out_put('- De cuántas formas distintas pueden sentarse 9 personas alrededor de una mesa redonda'),nl,
 pr([cuantas,formas,distintas,pueden,sentarse,8,personas,una,fila,butacas]),nl,nl.

leccion([combinatoria]):- 
out_put('Combinatoria'),nl,
pr([que, es, combinaciones, combinatoria]), nl,
out_put('Factorial'),nl, 
pr([que, es , factorial]), nl,nl,
 out_put('Ejercicios Resueltos:'),nl,nl,
out_put('- Duántos números de 3 cifras se pueden formar con los dígitos: 1, 2, 3, 4, 5'), nl,
pr([cuántos,números,de,3,cifras,se,puede,formar,con,los,dígitos,1, 2, 3, 4, 5]),nl,nl,
 out_put('- A una reunión asisten 12 personas y se intercambian saludos entre todos, cuántos saludos se han intercambiado?'),nl,
\+ pr([a,una,reunión,asisten,12,personas,y,se,intercambian,saludos,entre,todos,cuántos,saludos,se,han,intercambiado]),nl,nl,
out_put('- Cuatro libros distintos de matemáticas, seis diferentes de física y dos diferentes de química se colocan en un estante, de cuantas formas distintas es posible ordenarlos si los libros de cada asignatura deben estar todos juntos'),nl,
 pr([cuatro, libros, distintos, de, matemáticas, seis, diferentes, de, física, y, dos, diferentes, de ,química, se ,colocan, en, un, estante, de ,cuantas, formas, distintas, es, posible, ordenarlos, si, los, libros, de, cada, asignatura, deben, estar, todos, juntos]),nl,nl.

leccion([variacion]):- 
out_put('Variacion'),nl,
pr([que, son , variaciones]), nl,
 out_put('Ejercicios Resueltos:'),nl,nl,
out_put('- Cuántos números de tres cifras diferentes se puede formar con diez digitos diferetes, no repetidos'), nl,
\+pr([cuántos, números, de, 3, cifras, diferentes, se, puede, formar, con, 10, digitos, diferetes, no, repetidos]),nl,nl,
 out_put('- Cuántos números de tres cifras diferentes se puede formar con los dígitos: 0, 1, 2, 3, 4, 5'),nl,
 pr([cuántos, números, de, tres, cifras, diferentes, se, puede, formar, con, los, dígitos, 0, 1, 2, 3, 4, 5]),nl,nl.
