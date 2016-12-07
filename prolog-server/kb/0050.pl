%Alfredo Quintero
%CI 20851050
%Matematicas Discretas B-2015


/****************
Las siguientes PR hablan sobre el tema de recurrencia, son extraidas del capitulo 6 del libro de Fernandez Gallardo, se trato de llevar a PR la mayor cantidad de informacion extraible del capitulo para que sirva como base de datos para el juego.
Ademas se anexaron algunos programas recursivos que sirven para calcular la sucesion de fibonacci, restar dos numeros, multiplicar, entre otros. Se realizaron sus respectivas prs para cada codigo para que sirvan para el juego. Y se agrego informacion sobre el tema de grupos y ejemplos sobre el tema de combinatoria. En total se realizaron 70prs.
*************/

%Ecuaciones de recurrencia
pr(0050-1,['Qué', es, una, ecuación, de, recurrencia],['Es una técnica usada para dilucidar o resolver una sucesión de casos, busca averiguar la estructura común y la conexión de cada caso con el anterior. Si se puede reducir cada caso al anterior (con un argumento general), al final solo quedara un primer caso por resolver, del que se deducirán todos. El proceso por el que reducimos un caso al anterior dará como fruto una ecuación general que liga los respectivos resultados. Estas son las ecuaciones de (o en) recurrencias, o simplemente recurrencias.'],20/20,['Fernandez Gallardo']).

pr(0050-2,['Algunas', maneras, para, resolver, una, ecuación, de, recurrencia, son],['1. En función del caso anterior, 2. En función de los dos casos anteriores, 3. En función de todos los casos anteriores'],20/20,['Fernandez Gallardo']).

pr(0050-3,['Cuáles', son, las, ecuaciones, de, recurrencia, 'más', sencillas],['son aquéllas en las que el valor de un cierto término de la sucesión depende únicamente del valor del término anterior.'],20/20,['Fernandez Gallardo']).

pr(0050-4,['Procedimiento', general, para, calcular, la, 'ecuación', de, recurrencia, en, 'función', del, caso, anterior],['1. empezamos analizando el primer caso, digamos el valor de a1; 
2. luego buscamos argumentos que nos permitan establecer el valor de cada an en términos 
del correspondiente an-1; 
3. con esto ya tenemos resuelto el problema, pues de a1 y la regla de recurrencia obtenemos 
el valor de a2 , luego este nos permite calcular a3, etc.; 
4. pero, cuando sea posible, iremos más allá en el análisis y resolveremos la recurrencia. 
Esto es, obtendremos una fórmula explícita an = f(n) para cada n ≥ 1.'],20/20,['Fernandez Gallardo']).

pr(0050-5,['Es', suficiente, conocer, el, valor, del, 'término', anterior, para, calcular, una, 'ecuación', de, recurrencia],['En algunos casos si, mas no en todos.'],20/20,['Fernandez Gallardo']).

pr(0050-6,['El', comportamiento, 'asintótico', de, la, sucesión, depende, de, los, valores, iniciales],['El comportamiento asintótico de la sucesión no depende de los valores iniciales, sino que viene dictado por la ecuación.'],20/20,['Fernandez Gallardo']).

pr(0050-7,['Quién', fue, 'Fibonacci'],['Leonardo de Pisa, también conocido como Fibonacci (1170 – 1250) es un famoso matemático italiano famoso por difundir en Europa el sistema de numeración actualmente utilizado, esto es un sistema de numeración posicional en base decimal y un dígito de valor nulo (cero), y por idear la sucesión de Fibonacci.']).

pr(0050-8,['Qué', es, un, 'árbol', binario, con, 'raíz'],['En un árbol la raíz es el vértice que situamos más arriba, y el que sea binario quiere decir que cada vértice puede tener hasta dos descendientes hacia abajo.'],20/20,['Fernandez Gallardo']).

pr(0050-9,['Es', necesario, siempre, conocer, el, valor, de, 'algún', termino, anterior, para, calcular, la, 'ecuación', de, recurrencia],['No, a veces la recurrencia es caprichosa, y exige buscar el término que esté un cierto número de posiciones antes, o todas las de un cierto bloque anterior de la sucesión.'],20/20,['Fernandez Gallardo']).

pr(0050-10,['Quién', fue, 'Leibniz'],['Gottfried Leibniz (1646-1716), fue matemático y filósofo alemán considerado, junto con Newton, 
el inventor del Cálculo. Leibniz inventó notaciones que han llegado a nuestros días, como dx,  y reglas(que hoy llevan su nombre) como la de diferenciación de productos.'],20/20,['Fernandez Gallardo']).

pr(0050-11,['Algunas', familias, de, 'números', que, dependen, de, dos, 'parámetros:'],['coeficientes binó-micos, números de Stirling de primera y segunda especie, número de particiones de un entero en un cierto número de partes, etc.'],20/20,['Fernandez Gallardo']).

pr(0050-12,['Qué', es, un, sistema, de, ecuaciones, de, recurrencia],['A veces, asociado a un cierto parámetro, digamos n, tenemos dos (o más) sucesiones de números. Calcular un término de una de estas sucesiones puede involucrar, tanto a términos 
de su propia sucesión, como a términos de la otra (u otras). En estos casos, tendremos un sistema de ecuaciones de recurrencia.'],20/20,['Fernandez Gallardo']).

pr(0050-13,['A', 'qué', nos, lleva, el, 'análisis', de, cómo, evoluciona, una, cierta, cantidad, en, el, tiempo],['Es frecuente que el análisis de cómo evoluciona una cierta cantidad en el tiempo nos permita especificar la tasa de variación por unidad de tiempo. Esta información da lugar, de manera natural, a una ecuación de recurrencia.'],20/20,['Fernandez Gallardo']).




/*Ecuaciones linea les homogeneas y con coeficientes constantes*/

pr(0050-14,['Cómo', son, las, ecuaciones, lineales, 'homogéneas', y, con, coeficientes, constantes],['Son ecuaciones como la siguiente: 
an = B1(an−1) + B2(an−2) + · · · + Bk(an−k ),  para cada n ≥ k, 
donde los B1, B2 , . . . , Bn−k, son ciertos números dados, con Bk diferentes de 0 y k ≥ 1.'],20/20,['Fernandez Gallardo']).

pr(0050-15,['Qué', significa, que, una, ecuación, sea, 'homogénea'],['La homogeneidad quiere decir que no aparecen términos extra que no dependan de los propios aj. Si llegara a aparecer uno la ecuación deja de ser homogénea.'],20/20,['Fernandez Gallardo']).

pr(0050-16,['Cuántas', condiciones, iniciales, se, necesitan, para, que, la, 'sucesión', arranque],['Se necesitaran k condiciones iniciales para que la sucesión “arranque” (por “arrancar” la sucesión entenderemos fijar los valores iniciales para a0, a1, ..., ak-1),  los primeros k términos de la sucesión. A partir de ellos, y aplicando la ecuación:
(an = B1(an−1) + B2(an−2) + · · · + Bk(an−k )) reiteradamente, obtendremos todos los valores de (an).'],20/20,['Fernandez Gallardo']).

pr(0050-17,['Qué', ocurre, si, hago, 'combinación', lineal, de, sucesiones, que, sean, solución, de, una, ecuación],['La combinación lineal de sucesiones que sean solución de una ecuación me genera una sucesión que sigue siendo solución.'],20/20,['Fernandez Gallardo']).

pr(0050-18,['Si', encuentro, dos, soluciones, distintas, linealmente, independientes],['Si encontramos dos soluciones “distintas” (linealmente independientes), cualquier otra solución de la ecuación se puede escribir como combinación lineal de ellas.'],20/20,['Fernandez Gallardo']).

pr(0050-19,['Cómo', son, las, ecuaciones, lineales, no, 'homogéneas', y, con, coeficientes, constantes],['A diferencia de las ecuaciones lineales, homogéneas y con coeficientes constantes, este es un caso más general en el que la ecuación contiene un término extra que depende del índice n: 
an + B1(an−1) + B2(an−2) + · · · + Bk(an−k) = f(n) , donde f(n) es una cierta función no nula.'],20/20,['Fernandez Gallardo']).

pr(0050-20,['Cómo', encontrar, la, expresión, de, la, 'sucesión', de, 'números', (an), para, una, ecuación, de, grado, dos],['Si queremos encontrar la expresión de la sucesión de números (an) que cumplen la ecuación
an + α(an−1) + β(an−2) = f(n) , para cada n ≥ 2, 
junto con las condiciones iniciales a0 = p y a1 = q, seguimos los siguientes pasos
(1) analizamos primero la ecuación homogénea asociada, an + α(an−1) + β(an−2) = 0, 
y determinamos la solución general de esta ecuación, que será de la forma (A(bn) +B(cn)). 
(2) Calculamos una solución particular de la ecuación completa; digamos que es la sucesión (dn). 
(3) Ya tenemos la solución general de la ecuación completa, (A(bn) + B(cn) + dn ). Y ahora (y no antes) imponemos las condiciones iniciales para determinar los números A y B.'],20/20,['Fernandez Gallardo']).

pr(0050-21,['De', 'qué', se, trata, el, 'método', de, los, coeficientes, indeterminados],['Se trata, esencialmente, de buscar soluciones particulares dentro de la misma “familia” de funciones a la que pertenezca f(n). Lo cual nos debería permitir de una manera mas sencilla resolver una ecuación lineal, no homogénea, con coeficientes constantes.'],20/20,['Fernandez Gallardo']).

pr(0050-22,['Qué', significa, que, dos, ecuaciones, 'estén', desacopladas],['Que para resolver una ecuación no necesitamos la información de la otra.'],20/20,['Fernandez Gallardo']).

pr(0050-23,['Nombre', un, 'método', para, resolver, sistemas, de, ecuaciones, de, recurrencia],['Una manera de resolver sistemas de ecuaciones de recurrencia es operando con matrices.'],20/20,['Fernandez Gallardo']).

pr(0050-24,['Qué', es, la, matriz, de, 'transición'],['Es la matriz que define la transición de los estados desde un instante t0 hasta un instante t.'],20/20,['anonimo']).

pr(0050-25,['Qué', es, la, matriz, diagonal],['Una matriz diagonal es una matriz cuadrada en que las entradas son todas nulas salvo en la diaginal principal, y éstas pueden ser nulas o no.'],20/20,['anonimo']).

pr(0050-26,['Qué', son, autovalores, y, autovectores],['Un vector propio o autovector de A es un vector x distinto de cero tal que Ax = λx para algún λ ∈ R. A λ se le llama valor propio o autovalor asociado a A.'],20/20,['anonimo']).

pr(0050-27,['Qué', es, una, matriz, invertible, o, matriz, inversa],['Una matriz cuadrada A de orden n se dice que es invertible, si existe otra matriz cuadrada de orden n, llamada matriz inversa de A y representada como A^{-1}, tal que:  A * A^{-1} = A^{-1} * A = I, donde I es la matriz identidad de orden n y el producto utilizado es el producto de matrices usual.'],20/20,['anonimo']).

pr(0050-28,['Qué', es, una, matriz, cuadrada],['Se dice que una matriz es cuadrada cuando el número de filas es igual al número de columnas.'],20/20,['anonimo']).

/********************************
*********************************
	Algunos ejemplos del tema recurrencia, extraidos del libro de Fernandez Gallardo y de internet
*********************************
********************************/

pr(0050-29,['Ejemplo', 'ecuación', en, 'función', del, caso, anterior],['Queremos contar el número de listas de longitud n ≥ 1 formadas con ceros y unos. Llamemos an a la respuesta, para cada n. 
No parece un ejemplo muy apasionante, dado que la regla del producto nos permite obtener 
directamente la respuesta: an = 2^n, para cada n ≥ 1. Abordemos el problema desde otro punto de vista, planteando una recurrencia entre los números an. Para construir una lista de longitud n con ceros y unos tomamos primero una lista de longitud n-1 con las características pedidas (lo podremos hacer de a n-1 formas distintas). Luego, a cada una de ellas, le añadimos un 0 o un 1, para obtener así todas las posibles listas de longitud n. Como este procedimiento asocia a cada posible lista de longitud n-1 dos listas distintas de longitud n, se tendrá que 
(∗)  an = 2an – 1 ; para n ≥ 2. 

Necesitamos, además, un valor inicial, el número de listas de longitud 1: a1 = 2. El problema queda así resuelto en el siguiente sentido: el conocimiento de a1 y la relación (∗) nos permiten calcular a2 ; con a2 , aplicando de nuevo (∗), evaluamos a3 , etc. Pero en este caso, además, podemos resolver la recurrencia y obtener una fórmula explícita para los an : basta aplicar reiteradamente la regla para obtener que, para cada n ≥ 1, 
an = 2 an - 1 = 2 (2an - 2 ) = 2 2 an - 2 = 2 3 an - 3 = · · · = 2 n .'],20/20,['Fernandez Gallardo']).

pr(0050-30,['Ejemplo', 'ecuación', en, 'función', de, los, dos, casos, anteriores],['Llamemos an al número de listas de longitud n, formadas con ceros y unos, que no tienen unos consecutivos. 
Nos fijamos, por ejemplo, en la última posición. Caben dos posibilidades, que la lista acabe 
en 0 ó en 1. Las que acaban en 0 se construyen dando una de longitud n - 1 que cumpla las 
condiciones (ceros y unos, sin unos consecutivos) y añadiéndole un 0 al final. Las acabadas en 1 llevan, necesariamente, un 0 en la penúltima posición; así que habrá tantas como listas de longitud n − 2 que cumplan las condiciones.
Por tanto, la regla de recurrencia será, 
(∗) an = an-1  + an-2 ; para cada n ≥ 3.
Observemos que los valores iniciales, que permiten “arrancar” a la sucesión, son aquí a1=2 y a2=3.'],20/20,['Fernandez Gallardo']).

pr(0050-31,['Ejemplo', 'Sucesión', de, Fibonacci],['Designemos por Fn el número de pares de conejos al final del mes n. Partimos de un par de conejos que nacen en el primer mes; esto es, F1 = 1. Al cabo de un mes seguiremos teniendo 
una pareja de conejos, todavía no adultos: F2 = 1. En el tercer mes ya tenemos una pareja de adultos, que da lugar a una pareja de recién nacidos: F3 = 2. En el cuarto mes seguiremos teniendo una pareja de adultos, que tendrá descendencia. Y la pareja nacida en el mes anterior tendrá ahora un mes. En total, habrá tres parejas de conejos: F4 = 3. 
Y así, sucesivamente.
El número de parejas en el mes n es la suma del número de parejas en el mes n-1 más las parejas que nacen en el propio mes n.
De éstas hay tantas como parejas adultas hubiera en el mes n. Y a su vez, tantas como parejas 
en el mes n−2 (pues se tardan dos meses en ser adulto). En total, para cada n ≥ 3, obtenemos que la sucesión de Fibonacci es               Fn = F(n−1) + F(n−2). Si definimos las condiciones iniciales F0 = 0 y F1 = 1, la ecuación de recurrencia de la suseción de Fibonacci es válida para cada n≥ 2.'],20/20,['Fernandez Gallardo']).





/*******************
Algunas PR que utilizan diferentes codigos recursivos para calcular el resultado, entre ellos esta la susecion de fibonacci, restar numeros, multiplicar numeros, el factorial de un numero, la suma de la serie fibonacci entre otros
********************/

%----FIBINACCI----
%Codigo extraido de internet, autor Joel Fernandez

fibonacci(0,0).
fibonacci(1,1).
fibonacci(N,Y):-N>1,
	N1 is N-1,
	fibonacci(N1,Y1),
	N2 is N-2,
	fibonacci(N2,Y2),
	Y is Y1+Y2.

/* Para probar en el terminal solo la funcion
?- fibonacci(3,Y).
Respuesta: X=2 .

?- fibonacci(10,Y).
Respuesta: X=55 .
*/

pr(0050-32,['La suma fibonnacci de: ',X],[Z], 20/20, ['Alfredo Quintero']):- fibonacci(X,Z).


/*Para probar en el terminal la PR:
?- pr(0050-32,['La sucesion fibonnacci de da: ',10],X, Y, ['Alfredo Quintero']).
*/


%----usando recursividad listar, sumar la serie de fibonacci----
%Codigo extraido de internet, autor Joel Fernandez

concatenar([],L,L).
concatenar([A|Ca],L2,[A|Cc]):- concatenar(Ca,L2,Cc).
fibonacci(0,0).
fibonacci(1,1).
fibonacci(N,Y):-N>1,N1 is N-1,fibonacci(N1,Y1),N2 is N-2,fibonacci(N2,Y2),Y is Y1+Y2.
serieFibonacci(0,[0],0).
serieFibonacci(1,[1],1).
serieFibonacci(Nt,L,S):- Nt>1,fibonacci(Nt,P),N1 is Nt-1,serieFibonacci(N1,Ls,Ss),concatenar(Ls,[P],L),S is Ss+P.


/* Para probar en el terminal solo la funcion
?- SerieFibonacci(5,L,S).
L= [1,1,2,3,5],
S=12 .
*/

pr(0050-33,['la lista de valores FIBONACCI de: ',X],L, 20/20, ['Alfredo Quintero']):- serieFibonacci(X,L,S).


/*Para probar en el terminal la PR:
?- pr(0050-33,['La suma fibonnacci, mas la lista de valores de: ',5],L, X, ['Alfredo Quintero']).
*/

%----Resta Recursiva----
%Codigo extraido de internet, autor anonimo

resta(X,0,X).
resta(X,Y,Z) :- X>Y,
		Y>0,
		Ymenos1 is Y-1,
		resta(X,Ymenos1,Z1),
		Z is Z1-1.

pr(0050-34,['La resta de ',X,Y],[es: Z], 20/20, ['Alfredo Quintero']):- resta(X, Y, Z).


/*manera de probar en el terminal la pr 
?- pr(0050-34,['La resta de ',103,100],Z, P, ['Alfredo Quintero']).
Z = [es:3] .
*/

%----Multiplicacion recursiva----
%Codigo extraido de internet, autor anonimo

producto(0,X,0).
producto(X,Y,Z) :- X>0, 
		   Xmenos1 is X-1, 
		   producto(Xmenos1,Y,Z1), 
		   Z is Y + Z1.
pr(0050-35,['La multiplicacion de ',X,Y],[es: Z], 20/20, ['Alfredo Quintero']):- producto(X, Y, Z).

/*manera de probar en el terminal
?- pr(0050-35,['La multiplicacion de ',5,2],Z, P, ['Alfredo Quintero']).
Z = [es:10] .
*/

%----- Potencia ------
%Codigo extraido de internet, autor anonimo

potencia(A,0,1):- A =\=0.  % validamos que A se a diferente de 0 pues 0^0 es indeterminado.
potencia(X,Y,P ):- Y>0,Y1 is Y-1,     %regla de potencia ejemplo potencia(3,2,X).  Rpta=9
                    potencia(X,Y1,P1 ),
                    P is X*P1.


pr(0050-36,['La potencia de ',X,'elevado a', Y],[es: Z], 20/20, ['Alfredo Quintero']):- potencia(X, Y, Z).

/*manera de probar en el terminal
?- pr(0050-36,['La potencia de ',3,'elevado a', 2],Z, P, ['Alfredo Quintero']).
Z = [es:9] .
*/

%----Calcular el factorial de un numero----
%Codigo extraido de internet, autor anonimo

factorial(N,F) :- N>1, N1 is N-1, factorial(N1,F1), F is N*F1.
factorial(N,F) :- N=1, F is 1.

pr(0050-37,['El fatorial de un numero positivo es: ',X],[Z], 20/20, ['Alfredo Quintero']):- factorial(X,Z).

/*manera de llamar en el terminal
?- pr(0050-37,['El fatorial de un numero positivo es: ',4],X, P, ['Alfredo Quintero']).
X = [24] .
*/


/********************************
*********************************
	Algunas PRs sobre el tema de grupos, sacada de los apuntes vistos en clase y informacion extra que busque para estudiar el tema
*********************************
********************************/

pr(0050-38,['Qué', es, una, estructura, algebraica],['Una estructura algebraica es una n-tupla (a1, a2,..., an) donde a1 es un conjunto dado no vacío y {a2,..., an} un conjunto de operaciones aplicables a los elementos de dicho conjunto.'],20/20,['Alfredo Quintero']).

pr(0050-39,['Qué', es, un, grupo],['Se denomina grupo a todo conjunto no vacío G provisto de una ley interna totalmente definida y asociativa tal que para todo a, b que pertenezcan a G, y x, y existe x, y pertenecientes a G 
a*x=b=y*a.'],20/20,['Alfredo Quintero']).

pr(0050-40,['Cómo', esta, constituido, un, grupo],['El grupo esta constituido por el conjunto G y la ley * definida en ese conjunto, se designan con la notación (G, *).'],20/20,['Alfredo Quintero']).

pr(0050-41,['Qué', propiedades, se, deben, cumplir, para, que, sea, un, grupo],['a) Que este definido el * interno (Producto interno)
b) Se cumpla la propiedad asociativa
c) Que tenga un elemento neutro u, tal que a*u=a
d) Que tenga un elemento simétrico a^, tal que a*a^=u'],20/20,['Alfredo Quintero']).

pr(0050-42,['Qué', es, un, grupo, conmutativo, o, abeliano],['Para que un grupo sea conmutativo o abeliano además de las 4 propiedades ya definidas para grupos, debe cumplirse también la propiedad conmutativa (a*b=b*a).'],20/20,['Alfredo Quintero']).

pr(0050-43,['Qué', es, un, anillo],['Un anillo es un grupo, pero cuenta con dos operaciones. Se puede definir como
Anillo(B, *, **)
Donde B es un conjunto, * es la primera operación y ** la segunda operación.'],20/20,['Alfredo Quintero']).

pr(0050-44,['Qué', es, un, semigrupo],['Un semigrupo es cuando el operador * solamente tiene definidas dos propiedades
a)Producto interno
b)Propiedad Asociativa'],20/20,['Alfredo Quintero']).

pr(0050-45,['Qué', propiedades, se, deben, cumplir, para, que, sea, un, anillo],['Para que sea un anillo se debe cumplir que
(B,*) sea un grupo abeliano
(B, **) sea un semigrupo.'],20/20,['Alfredo Quintero']).

pr(0050-46,['Qué', es, un, anillo, unitario],['Es un operador que además de ser un semigrupo tiene la propiedad de tener un elemento neutro.'],20/20,['Alfredo Quintero']).

pr(0050-47,['Qué', es, un, anillo, conmutativo],['Es un operador que además de ser un semigrupo tiene la propiedad de ser conmutativo.'],20/20,['Alfredo Quintero']).

pr(0050-48,['Qué', es, un, anillo, conmutativo, y, unitario],['Es un operador que además de ser un semigrupo tiene la propiedad de tener un elemento neutro y ser conmutativo. Es decir cumple las propiedades de anillo conmutativo y de anillo unitario.'],20/20,['Alfredo Quintero']).

pr(0050-49,['Qué', es, un, dominio, de, integridad],['Es un anillo de conmutación con unidad en el cual si a, b, c pertenecen a D entonces
c(x)a= c(x)b me genera que a=b.'],20/20,['Alfredo Quintero']).

pr(0050-50,['Qué', es, un, cuerpo],['Es un dominio de integridad tal que todo elemento menos el neutro tiene un inverso multiplicativo. Es decir para todo a perteneciente a K y a diferente del neutro, existe a^ tal que 
a(x)a^=u.'],20/20,['Alfredo Quintero']).


/***************
Algunas PRs sobre Ejercicios de combinatoria resueltos
****************/

pr(0050-51,['Ejemplo', combinatoria, 'un número telefónico consta de siete cifras enteras. Supongamos que la primera cifra debe ser un número entre 2 y 9, ambos inclusive. La segunda y la tercera cifra deben ser números entre 1 y 9, ambos inclusive. Cada una de las restantes cifras es un número entre 0 y 9, ambos inclusive. ¿Cuántos números de teléfono distintos pueden formarse con estas condiciones?'],['Para la primera cifra tenemos 8 casos. Para la segunda y tercera juntas son RV9,2
y las restantes serán RV10,4.
 En consecuencia el número de teléfonos es 8.9^2.10^4 = 6480000 '],20/20,['José Manuel Ramos González']).

pr(0050-52,['Ejemplo', combinatoria, 'Una empresa produce cerraduras de combinación. Cada combinación consta de tres números enteros del 0 al 99, ambos inclusive. Por el proceso de construcción de las cerraduras cada número no puede aparecer más de una sola vez en la combinación de la cerradura. ¿Cuántas cerraduras diferentes pueden construirse?'],['Una posible combinación sería 1, 23, 87 que sería distinta de 23, 1, 87, por lo que importa el orden. Por otra parte nos dicen que cada número no puede aparecer más de una sola vez, por lo que no hay repetición.
Se trata de V100, 3 = 100.99.98= 970200 '],20/20,['José Manuel Ramos González']).

pr(0050-53,['Ejemplo', combinatoria, 'El consejo directivo de una empresa informática tiene 10 miembros. Se ha programado una próxima reunión de accionistas para aprobar una nueva lista de ejecutivos (elegidos entre los 10 miembros del consejo). ¿Cuántas listas diferentes, formadas por un presidente, un vicepresidente, un secretario y un tesorero, pueden presentar el consejo a los accionistas para su aprobación?Si tres miembros del consejo son ingenieros en informática ¿cuántas de las anteriores listas tienen un ingeniero propuesto para la presidencia?'],['Llamemos a los miembros 1,2,3,..., 10, Una lista sería 1,2,3,4 otra sería 4,5,3,1 donde el orden importa ya que el primero sería el presidente, el segundo el vicepresidente, el tercero el secretario y el cuarto el tesorero, es decir que la lista 1,2,3,4 no sería la misma que la 4,3,2,1 ya que el primer caso el presidente sería 1 y en el segundo sería 4. Obviamente no hay repetición. Así pues el número de listas es V10,4= 10000. 
Si tres miembros del consejo son ingenieros. ¿En Cuántas listas hay un ingeniero propuesto para la presidencia?
Fijamos el presidente (3 casos) y variamos a los restantes. Tendríamos entonces
3.V9,3 = 3.9.8.7 = 1512'],20/20,['José Manuel Ramos González']).

pr(0050-54,['Ejemplo', combinatoria, 'El consejo directivo de una empresa informática tiene 10 miembros. Se ha programado una próxima reunión de accionistas para aprobar una nueva lista de ejecutivos (elegidos entre los 10 miembros del consejo). ¿Cuántas listas diferentes, formadas por un presidente, un vicepresidente, un secretario y un tesorero, pueden presentar el consejo a los accionistas para su aprobación?Si tres miembros del consejo son ingenieros en informática ¿cuántas de las anteriores listas tienen  exactamente un ingeniero en la lista? '],['Llamemos a los miembros 1,2,3,..., 10, Una lista sería 1,2,3,4 otra sería 4,5,3,1 donde el orden importa ya que el primero sería el presidente, el segundo el vicepresidente, el tercero el secretario y el cuarto el tesorero, es decir que la lista 1,2,3,4 no sería la misma que la 4,3,2,1 ya que el primer caso el presidente sería 1 y en el segundo sería 4. Obviamente no hay repetición. Así pues el número de listas es V10,4= 10000. 
En cuantas listas hay exactamente un ingeniero.
Tenemos 3 ingenieros para 4 posiciones y los 7 miembros restantes los variamos
de 3 en 3
4.3.V7,3= 4.3.7.6.5= 2520'],20/20,['Alfredo Quintero']).

pr(0050-55,['Ejemplo', combinatoria, 'Con las cifras 1, 2, 3, 4, 5 y 7 se forman números de cinco cifras que no tengan ninguna repetida. ¿Cuántos números se pueden formar?'],['Importa el orden y no hay repetición V6,5 = 6.5.4.3.2 = 720'],20/20,['José Manuel Ramos González']).

pr(0050-56,['Ejemplo', combinatoria, 'Con las cifras 1, 2, 3, 4, 5 y 7 se forman números de cinco cifras que no tengan ninguna repetida.  ¿Cuántos de ellos son múltiplos de 4 y cuántos son múltiplos de 2?'],['Son múltiplos de 4 los que acaban en 12, 24, 32, 44, 52, 72. El caso 44 no nos vale por haber repetición. 
Acaban en 12 V4,3 = 4.3.2. = 24. Por tanto los múltiplos de 4 son 5.24=120.
Como hay 720 casos, acaban en una cifra concreta de las 6, 720/6 = 120 y como para ser pares tienen que acabar en 2 o 4, el número de pares que hay es 240.'],20/20,['José Manuel Ramos González']).

pr(0050-57,['Ejemplo', combinatoria, 'Un profesor del Departamento de Computación tiene siete libros de programación diferentes en una estantería. Tres de los libros son de FORTRAN y los otros cuatro de PASCAL. ¿De cuántas formas puede ordenar el profesor estos libros si  no hay restricciones?'],['Si constituyen siete libros diferentes, el resultado es P7 = 7!= 5040'],20/20,['Alfredo Quintero']).

pr(0050-58,['Ejemplo', combinatoria, 'Un profesor del Departamento de Computación tiene siete libros de programación diferentes en una estantería. Tres de los libros son de FORTRAN y los otros cuatro de PASCAL. ¿De cuántas formas puede ordenar el profesor estos libros si todos los libros de FORTRAN deben estar juntos?'],['Los lenguajes deben alternar, es decir P1F1P3F2P2F3P4 y siempre deben estar colocados así variando solamente los subíndices. Por cada cuaterna de los de Pascal tengo P3 = 3! ternas de fortran. Por tanto la solución es P4.P3 = 4!.3!= 144'],20/20,['José Manuel Ramos González']).

pr(0050-59,['Ejemplo', combinatoria, 'Un profesor del Departamento de Computación tiene siete libros de programación diferentes en una estantería. Tres de los libros son de FORTRAN y los otros cuatro de PASCAL. ¿De cuántas formas puede ordenar el profesor estos libros si todos los libros de FORTRAN deben estar juntos?'],['Si los libros de Fortran deben estar juntos, puedo considerar un bloque a los tres
permutados entre sí, es decir, por ejemplo: P1(FFF)P2P3P4
El número de casos que tendríamos en esa situación sería P5 = 5!, pero a su vez los elementos de FFF permutan entre sí P3 veces, por lo que el resultado pedido será:
P5.P3 = 5!.3!= 720'],20/20,['José Manuel Ramos González']).

pr(0050-60,['Ejemplo', combinatoria, 'Un profesor del Departamento de Computación tiene siete libros de programación diferentes en una estantería. Tres de los libros son de FORTRAN y los otros cuatro de PASCAL. ¿De cuántas formas puede ordenar el profesor estos libros si  todos los libros de FORTRAN deben estar juntos y los libros de PASCAL también?'],['Si los de Fortran deben estar juntos y los de Pascal también tenemos los dos casos FFFPPPP o PPPPFFF, es decir P2, pero a su vez el bloque FFF presenta P3 casos y el bloque PPPP presenta P4 casos. El resultado final sería:
P2.P3.P4 = 2!.3!.4!= 288'],20/20,['José Manuel Ramos González']).

pr(0050-61,['Ejemplo', combinatoria, 'Una mano de bridge consta de 13 cartas del conjunto de 52 de la baraja francesa. ¿Cuántas manos de bridge son posibles?'],['El número posibles de manos es obviamente C52,13 pues el orden en que estén dadas las cartas no influye en la mano y no puede haber repetición por no haber cartas repetidas.'],20/20,['José Manuel Ramos González']).

pr(0050-62,['Ejemplo', combinatoria, 'Una mano de bridge consta de 13 cartas del conjunto de 52 de la baraja francesa. ¿De cuántas formas se le puede dar a una persona 6 picas y 5 corazones?'],['En una mano hay C13,6 de dar 6 picas, pues tengo 13 picas para dar 6. Analogamente para dar 5 corazones serían C13,5. Por último me quedan todavía dos cartas por dar para completar la mano, de donde puedo elegir cualquiera que no sea picas ni corazones, es decir 13 tréboles y 13 rombos, es decir C26,2.
Por tanto el resultado final es C13,6.C13,5.C26,2'],20/20,['José Manuel Ramos González']).

pr(0050-63,['Ejemplo', combinatoria, 'Un estudiante debe responder siete de las diez preguntas de un examen. ¿De cuántas formas puede hacer su elección si no hay restricciones'],['Si las preguntas las numeramos del 1 al 10, una posible respuesta sería 9834567, que es la misma aunque alteremos el orden y no hay posible repetición. Se trata de combinaciones de 10 tomadas 7 a 7, es decir C10,7'],20/20,['José Manuel Ramos González']).

pr(0050-64,['Ejemplo', combinatoria, 'En un lote de 100 ordenadores se sabe que 10 de ellos contienen circuitos integrados defectuosos. Se selecciona una muestra de 7 ordenadores de forma aleatoria para realizar un chequeo. ¿Cuántas muestras contienen tres circuitos defectuosos?'],['De los 7, tres han debido ser elegidos de los 10 defectuosos, es decir C10,3 y el resto serán 4 de los 90 en buen estado. Por tanto la solución es C10,3.C90,4'],20/20,['José Manuel Ramos González']).

pr(0050-65,['Ejemplo', combinatoria, 'En un lote de 100 ordenadores se sabe que 10 de ellos contienen circuitos integrados defectuosos. Se selecciona una muestra de 7 ordenadores de forma aleatoria para realizar un chequeo. ¿Cuántas muestras contienen al menos un circuito defectuoso?'],['Al menos un circuito defectuoso, serían todos menos los que no tuvieran ningún circuito defectuoso, esto es:
C100,7–C90,7'],20/20,['José Manuel Ramos González']).

pr(0050-66,['Ejemplo', combinatoria, ' Si una partida de bridge es una partición ordenada de 52 cartas en cuatro grupos de 13 cartas cada uno. ¿Cuántas partidas distintas de bridge se pueden jugar con una baraja?'],['Al primer jugador podemos darle C52,13 manos, al segundo C39,13, al tercero C26,13 y al último 1.
La soluciónfinal seria C52,13.C39,13.C26,13 '],20/20,['José Manuel Ramos González']).

pr(0050-67,['Ejemplo', combinatoria, '¿De cuántas maneras se pueden distribuir 12 libros distintos entre cuatro niños de modo que cada niño reciba tres libros?'],['El primer niño puede recibir C12,3, el segundo C9,3, el tercero C6,3 y el último C3,3.
Por tanto la solución es C12,3,.C9,3.C6,3.C3,3'],20/20,['José Manuel Ramos González']).

pr(0050-68,['Ejemplo', combinatoria, '¿Cuántos números de 5 cifras diferentes se puede formar con los dígitos: 1, 2, 3, 4,5?'],['P5=5!, por lo tanto el resultado es 120'],20/20,['Anonimo']).

pr(0050-69,['Ejemplo', combinatoria, '¿De cuántas formas se pueden disponer tres letras del alfabeto inglés? '],['El alfabeto inglés consta de 26 letras. Por lo tanto, se pueden distribuir 3 letras de
P(26,3), esto es 26.25.24 = 15600maneras.'],20/20,['Anonimo']).

pr(0050-70,['Ejemplo', combinatoria, 'Hay 10 dígitos decimales. ¿Cuántos conjuntos se pueden formar que contengan exactamente 3 de esos dígitos?'],['C10,3=120'],20/20,['Anonimo']).


/******** Nuevas PRs ********/
/****************************
Se agregar unas nuevas PRs sobre el lenguaje de programación PROLOG, ya que considero que es uno de los aprendizajes que deja la materia, revisando las contribuciones de semestres anteriores no vi que alguien desarrollara PRs sobre esto y creo que seria bueno que el juego contenga informacion sobre PROLOG por si alguien tiene alguna consulta cuando esta comenzando a usar prolog o se le olvido algo, ya que seria bueno que el juego le permita aprender esto. Trate de agregar la mayor cantidad de información que consegui, espero sea una buena contribución. La informacion fue extraida del manual de PROLOG del profesor  Ivan Bratko, que se encuentra en español en la web del profesor Jacinto Davila y de la página programacion.net donde se encuentran dos manuales sobre el uso del lenguaje de programación Prolog.
****************************/

pr(0050-71,['Qué', es, la, 'programación', 'Lógica'],['La Programación Lógica es un paradigma de computación que consiste de un enfoque declarativo para escribir programas para el computador. Los programas lógicos pueden ser entendidos y estudiados a partir de dos conceptos: verdad y deducción lógica. En programación lógica, uno puede preguntarse si un axioma de un programa es verdad bajo alguna interpretación de los símbolos del programa y si ciertas declaraciones lógicas son consecuencia del programa. Esas preguntas pueden ser respondidas independientemente de cualquier mecanismo de ejecución concreto.'],20/20,['Ivan Bratko']).

pr(0050-72,['Sobre', que, paradigma, esta, basado, el, lenguaje, 'PROLOG'],['Sobre el paradigma de Programación Lógica'],20/20,['Ivan Bratko']).

pr(0050-73,['Qué', significa, la, palabra, 'PROLOG'],['for Programation et Logique or Programming in Logic.'],20/20,['Ivan Bratko']).

pr(0050-74,['Qué', es, 'PROLOG'],['es un lenguaje de programación con un significado operacional preciso que toma prestado sus conceptos básicos de la programación lógica. Los programas PROLOG son instrucciones para ejecutar sobre el computador. Esas instrucciones casi siempre son leídas como instrucciones lógicas y, lo más importante, el resultado de una computación de un programa PROLOG es una consecuencia lógica de los axiomas en éste.'],20/20,['Ivan Bratko']).

pr(0050-75,['A', quienes, se, atribuye, el, comienzo, de, la, 'programación', 'lógica'],['Puede ser atribuido a los profesores Kowalski y Colmerauer.'],20/20,['Ivan Bratko']).

pr(0050-76,['Cómo', esta, definido, un, programa, en, 'PROLOG'],['Un programa PROLOG esta definido como un conjunto de procedimientos (el orden es indiferente). Cada procedimiento consiste de una o más cláusulas (ahora, el orden de las cláusulas si es importante). Hay dos tipos de cláusulas: hechos y reglas. El programa es almacenado en una base de conocimiento PROLOG.'],20/20,['Ivan Bratko']).

pr(0050-77,['Cómo', cargas, un, programa, dentro, de, la, base, de, datos, 'PROLOG'],['Usando el comando consult, en la siguiente forma:
? consult(‘Nombre_Del_archivo_Con_El_Programa’).'],20/20,['Ivan Bratko']).

pr(0050-78,['Comando', consult, 'PROLOG'],['El comando consult agrega las cláusulas y hechos desde el archivo texto especificado a las cláusulas y hechos ya almacenados en la base de datos. Así puedes cargar más programas dentro de la base de datos a la vez, pero debes ser cuidadoso si los programas no usan los procedimientos con el mismo nombre. De otra manera, debido a la acumulación de cláusulas, esos procedimientos podrían comportarse incorrectamente.'],20/20,['Ivan Bratko']).

pr(0050-79,['Comando', reconsult, 'PROLOG'],['Este comando se comporta igual al comando consult (agrega procedimientos dentro de la base de datos) pero si hay un procedimiento en la base de datos con el mismo nombre de algún procedimiento en el archivo reconsultado, entonces el primer procedimiento es reemplazado por la nueva definición. Puedes usar el comando reconsult para cambiar un programa en la base de datos durante la depuración. Se usa de la siguiente forma: ? reconsult(‘Nombre_Del_archivo_Con_El_Programa’).'],20/20,['Ivan Bratko']).

pr(0050-80,['Cómo', se, ejecuta, un, programa,en, 'PROLOG'],['El programa PROLOG es ejecutado invocando algún procedimiento del programa de la siguiente forma:
? nombre_Del_Procedimiento(parámetros).
"Llamar un procedimiento" es equivalente a "preguntando una pregunta" en PROLOG.'],20/20,['Ivan Bratko']).

pr(0050-81,['Cuál', es, la, utilidad, de, 'PROLOG'],['Generación de CGI’s, Acceso a bases de datos desde páginas Web, Paralelización automática de programas, Programación distribuida y multiagente, Sistemas expertos e inteligencia artificial, Validación automática de programas, Procesamiento de lenguaje natural, Prototipado rápido de aplicaciones, Bases de datos deductivas, Interfacing con otros lenguajes como Java y Tcl/Tk,... (la lista es interminable) ...'],20/20,['Angel Fernández Pineda']).

pr(0050-82,['Cómo', hacer, un, comentario, en, 'PROLOG'],['Los comentarios en Prolog se escriben comenzando la línea con un símbolo de porcentaje. Ejemplo:
 % Hola, esto es un comentario. 
 % Y esto también.'],20/20,['Angel Fernández Pineda']).

pr(0050-83,['Cómo', declarar, variables, 'lógicas', en, 'PROLOG'],['Las váriables en Prolog no son variables en el sentido habitual, por eso las llamamos variables lógicas. Se escriben como una secuencia de caracteres alfabéticos comenzando siempre por mayúscula o subrayado. Ejemplos de variables:
  Variable 
  _Hola    
  _ 
El hecho de que los nombres de variables comienzen por mayúscula (o subrayado) evita la necesidad de declarar previamente y de manera explícita las variables, tal y como ocurre en otros lenguajes.'],20/20,['Angel Fernández Pineda']).

pr(0050-84,['Qué', es, una, variable, 'anónima', en, 'PROLOG'],['Existen variables sin nombre, y todas ellas se representan mediante el símbolo de subrayado _. Pero cuidado, aunque todas las variables anónimas se escriben igual, son todas distintas. Es decir, mientras que dos apariciones de la secuencia de caracteres Hola se refieren a la misma variable, dos apariciones de la secuencia _ se refieren a variables distintas.'],20/20,['Angel Fernández Pineda']).

pr(0050-85,['Qué', son, 'Términos', en, 'PROLOG'],['Los términos son el único elemento del lenguaje, es decir, los datos son términos, el código son términos, incluso el propio programa es un término. No obstante, es habitual, llamar término solamente a los datos que maneja un programa. Un término se compone de un functor seguido de cero a N argumentos entre paréntesis y separados por comas. Los números enteros o decimales sin restricciones de tamaño también son términos.'],20/20,['Angel Fernández Pineda']).

pr(0050-86,['Qué', es, un, 'Functor', en, 'PROLOG'],['Un functor (también denominado átomo) puede ser: una sucesión de caracteres alfanuméricos comenzando por una letra minúscula, un símbolo de puntuación o secuencia de estos. Las secuencias permitidas varian de un entorno de desarrollo a otro o una sucesión cualquiera de caracteres encerrada entre comillas simples.
Algunos ejemplos de functores:
     functor 
     f384p12 
     ‘esto es un unico functor, eh!!’ 
     ‘_functor’'],20/20,['Angel Fernández Pineda']).

pr(0050-87,['Cómo', pueden, ser, los, argumentos, de, un, 'término', en, 'PROLOG'],['Los argumentos de un término pueden ser: otro término o una váriable lógica. La mejor forma de aprender a escribir términos es mirando algunos ejemplos:
   termino_cero_ario 
   1237878837385345.187823787872344434 
   ‘mi functor’(17,hola,‘otro termino’) 
   f(Variable) 
   muchos_argumentos(_,_,_,Variable,232,f,g,a) 
   terminos_anidados(f(g), h(i,j(7)), p(a(b)), j(1,3,2,_))'],20/20,['Angel Fernández Pineda']).

pr(0050-88,['Functor', definido, como, operador, 'término', en, 'PROLOG'],['Algunos functores pueden estar declarados como operadores, bien de manera predefinida, o bien por el programador. Los operadores simplemente sirven para escribir términos unarios o binarios de una manera más cómoda. Por ejemplo, un functor definido como operador infijo es la suma (+). Así, la expresión a+b es perfectamente válida, aunque en realidad no es más que el término +(a,b).
Los operadores binarios infijos nos permiten escribir el functor entre los dos argumentos y eliminar los paréntesis.
Los operadores tienen asociada una prioridad. Por ejemplo, la expresión a+b*c es en realidad el término +(a,*(b,c)). Esto es así porque el operador producto (*) tiene más prioridad que el operador suma (+). Si no fuese así, se trataría del término *(+(a,b),c).
Los operadores también pueden ser unarios y prefijos, lo que nos evita escribir los paréntesis del argumento. Por ejemplo, la expresión -5 es en realidad el término -(5).'],20/20,['Angel Fernández Pineda']).

pr(0050-89,['Qué', es, un, 'término', cerrado, o, ground, en, 'PROLOG'],['Un término que no contiene variables libres se dice que es cerrado o ground'],20/20,['Angel Fernández Pineda']).

pr(0050-90,['Qué', es, un, 'término', 'N-ario', o, con, 'aridad N', en, 'PROLOG'],['Un término con N argumentos'],20/20,['Angel Fernández Pineda']).

pr(0050-91,['Tienen', los, números, límite, de, precisión, o, rango, en, 'PROLOG'],['Los números en Prolog no tienen límite de precisión o rango. Estan límitados únicamente por la memoria disponible.'],20/20,['Angel Fernández Pineda']).

pr(0050-92,['Cómo', se, dan, valores, a, las, variables, en, 'PROLOG'],['La unificación es el mecanismo mediante el cuál las variables lógicas toman valor en Prolog. El valor que puede tomar una variable consiste en cualquier término, por ejemplo, j(3), 23.2, ‘hola que tal’, etc. Por eso decimos que los datos que maneja Prolog son términos. Cuando una variable no tiene valor se dice que está libre. Pero una vez que se le asigna valor, éste ya no cambia, por eso se dice que la variable está ligada.'],20/20,['Angel Fernández Pineda']).

pr(0050-93,['Qué', significa, que, dos, términos, unifican, en, 'PROLOG'],['Se dice que dos términos unifican cuando existe una posible ligadura (asignación de valor) de las variables tal que ambos términos son idénticos sustituyendo las variables por dichos valores. Por ejemplo: a(X,3) y a(4,Z) unifican dando valores a las variables: X vale 4, Z vale 3. Obsérvese que las variables de ambos términos entran en juego. Por otra parte, no todas las variables estan obligadas a quedar ligadas. Por ejemplo: h(X) y h(Y) unifican aunque las variables X e Y no quedan ligadas. No obstante , ambas variables permanecen unificadas entre sí. Si posteriormente ligamos X al valor j(3) (por ejemplo), entonces automáticamente la variable Y tomará ese mismo valor. Lo que esta ocurriendo es que, al unificar los términos dados, se impone la restricción de que X e Y deben tomar el mismo valor aunque en ese preciso instante no se conozca dicho valor.
La unificación no debe confundirse con la asignación de los lenguajes imperativos puesto que representa la igualdad lógica. Muchas veces unificamos variables con términos directamente y de manera explícita (ya veremos como se hace esto), por ejemplo,X y 355. Esto provoca la sensación de que estamos asignando valores a las variables al estilo imperativo.'],20/20,['Angel Fernández Pineda']).

pr(0050-94,['Cómo', saber, si, dos, términos, unifican, en, 'PROLOG'],['Para saber si dos términos unifican podemos aplicar las siguientes normas:
Una variable siempre unifica con un término, quedando ésta ligada a dicho término.
Dos variables siempre unifican entre sí, además, cuando una de ellas se liga a un término, todas las que unifican se ligan a dicho término.
Para que dos términos unifiquen, deben tener el mismo functor y la misma aridad. Después se comprueba que los argumentos unifican uno a uno manteniendo las ligaduras que se produzcan en cada uno.
Si dos términos no unifican, ninguna variable queda ligada.'],20/20,['Angel Fernández Pineda']).

pr(0050-95,['Se', puede, unificar, una, variable, consigo, misma, en, 'PROLOG'],['Una variable siempre unifica consigo misma: Z y Z.'],20/20,['Angel Fernández Pineda']).

pr(0050-96,['Predicados', 'y', 'Objetivos', en, 'PROLOG'],['Los predicados son los elementos ejecutables en Prolog. En muchos sentidos se asemejan a los procedimientos o funciones típicos de los lenguajes imperativos.
Una llamada concreta a un predicado, con unos argumentos concretos, se denomina objetivo (en inglés, goal). Todos los objetivos tiene un resultado de éxito o fallo tras su ejecución indicando si el predicado es cierto para los argumentos dados, o por el contrario, es falso.
Cuando un objetivo tiene éxito las variables libres que aparecen en los argumentos pueden quedar ligadas. Estos son los valores que hacen cierto el predicado. Si el predicado falla, no ocurren ligaduras en las variables libres.
Ejemplo:
El caso más básico es aquél que no contiene variables: son_hermanos(‘Juan’,‘Maria’). Este objetivo sólamente puede tener una solución (verdadero o falso).
Si utilizamos una variable libre: son_hermanos(‘Juan’,X), es posible que existan varios valores para dicha variable que hacen cierto el objetivo. Por ejemplo para X = ‘Maria’, y para X = ‘Luis’.
También es posible tener varias variables libres: son_hermanos(Y,Z). En este caso obtenemos todas las combinaciones de ligaduras para las variables que hacen cierto el objetivo. Por ejemplo, X = ‘Juan’ y Z = ‘Maria’ es una solución. X = ‘Juan’ y Z = ‘Luis’ es otra solución.'],20/20,['Angel Fernández Pineda']).

pr(0050-97,['Secuencias', de, objetivos, en, 'PROLOG'],['En Prolog los objetivos se pueden combinar mediante conectivas propias de la lógica de primer orden: la conjunción, la disyunción y la negación.
La conjunción es la manera habitual de ejecutar secuencias de objetivos.
El operador de conjunción es la coma, por ejemplo: edad(luis,Y),edad(juan,Z),X>Z. Parece sencillo, pero hay que tener en cuenta qué ocurre con las ligaduras de las variables:
En primer lugar, hay que ser consciente de que los objetivos se ejecutan secuencialmente por orden de escritura (es decir, de izquierda a derecha).
Si un objetivo falla, los siguientes objetivos ya no se ejecutan. Además la conjunción, en total, falla.
Si un objetivo tiene éxito, algunas o todas sus variables quedan ligadas, y por tanto, dejan de ser variables libres para el resto de objetivos en la secuencia.
Si todos los objetivos tienen éxito, la conjunción tiene éxito y mantiene las ligaduras de los objetivos que la componen.'],20/20,['Angel Fernández Pineda']).

pr(0050-98,['Qué', ocurre, si, 'uno', o, varios, objetivos, tienen, varias, soluciones, en, 'PROLOG'],['Cuando esto ocurre entra en juego el backtracking. Esto consiste en recordar los momentos de la ejecución donde un objetivo tenía varias soluciones para posteriormente dar marcha atrás y seguir la ejecución utilizando otra solución como alternativa.'],20/20,['Angel Fernández Pineda']).

pr(0050-99,['Cómo', funciona, el, backtracking, en, 'PROLOG'],['El backtracking funciona de la siguiente manera:
Cuando se va ejecutar un objetivo, Prolog sabe de antemano cuantas soluciones alternativas puede tener. Cada una de las alternativas se denomina punto de elección. Dichos puntos de elección se anotan internamente y de forma ordenada. Para ser exactos, se introducen en una pila. Se escoge el primer punto de elección y se ejecuta el objetivo eliminando el punto de elección en el proceso. Si el objetivo tiene éxito se continúa con el siguiente objetivo aplicandole estas mismas normas. Si el objetivo falla, Prolog dá marcha atrás recorriendo los objetivos que anteriormente sí tuvieron éxito (en orden inverso) y deshaciendo las ligaduras de sus variables. Es decir, comienza el backtracking.
Cuando uno de esos objetivos tiene un punto de elección anotado, se detiene el backtracking y se ejecuta de nuevo dicho objetivo usando la solución alternativa. Las variables se ligan a la nueva solución y la ejecución continúa de nuevo hacia adelante. El punto de elección se elimina en el proceso.
El proceso se repite mientras haya objetivos y puntos de elección anotados. De hecho, se puede decir que un programa Prolog ha terminado su ejecución cuando no le quedan puntos de elección anotados ni objetivos por ejecutar en la secuencia.
Además, los puntos de elección se mantienen aunque al final la conjunción tenga éxito. Esto permite posteriormente conocer todas las soluciones posibles.'],20/20,['Angel Fernández Pineda']).

pr(0050-100,['Predicados', predefinidos, en, 'PROLOG'],['Existen algunos predicados predefinidos en el sistema y que están disponibles en todo momento. El más importante es la igualdad: =. Este predicado tiene éxito si sus dos argumentos unifican entre sí, falla en caso contrario. Por ejemplo, el objetivo X = 3 provoca la ligadura de X al valor 3 puesto que unifican. Otro ejemplo es f(3) = f(X), que también liga X al valor 3.
Es muy importante no confundir la igualdad lógica con la igualdad aritmética. Por ejemplo, X = 3 + 2 tiene éxito pero no resulta en X ligado a 5. De hecho, la variable X queda ligada al término +(3,2).
Otros predicados predefinidos muy útiles son los de comparación aritmética. Naturalmente, estos no funcionan con cualquier término como argumento. Solamente sirven para números (enteros y decimales). Algunos de estos predicados son:
< menor que, > mayor que, =< menor o igual que, >= mayor o igual que, =:= igualdad aritmetica.'],20/20,['Angel Fernández Pineda']).

pr(0050-101,['Cláusulas', en, 'PROLOG'],['Las cláusulas son términos (como todo en Prolog) con el siguiente formato:
  cabeza :-  
    objetivon. 
 Todo gira en torno al operador ":-". Lo que aparece a la izquierda se denomina cabeza y la secuencia de objetivos que aparece a la derecha se denomina cuerpo. La cabeza es un término simple, por ejemplo, p(X,12) podría ser la cabeza de una cláusula del predicado p. Es decir, todas las cláusulas de un mismo predicado tienen en la cabeza un término con el mismo functor y aridad, aunque los argumentos pueden ser distintos. El cuerpo no es más que el conjunto de condiciones que deben cumplirse (tener éxito) para que el predicado tenga éxito si lo invocamos con un objetivo que unifique con la cabeza.'],20/20,['Angel Fernández Pineda']).

pr(0050-102,['Cláusulas', 'sin', cuerpo, en, 'PROLOG'],['Si no existen condiciones para que una cláusula sea cierta podemos omitir el cuerpo. En tal caso solamente escribimos la cabeza terminada en punto. Por ejemplo:
  edad(juan,32). 
  edad(luis,20).
 Son dos cláusulas del predicado edad. Las cláusulas sin cuerpo se suelen denominar hechos, e.g. es un hecho que la edad de Luis es 20 años.'],20/20,['Angel Fernández Pineda']).

pr(0050-103,['Podemos', escribir, las, 'cláusulas', en, una, sola, 'línea', en, 'PROLOG'],['Si, seria: a :- b,c,d.'],20/20,['Angel Fernández Pineda']).

pr(0050-104,['Si', una, misma, variable, aparece, en, dos, 'cláusulas', diferentes, son, la, misma, variable, en, 'PROLOG'],['Si una misma variable aparece en dos cláusulas diferentes, entonces son variables diferentes pero con el mismo nombre. Recuerde que el ámbito de visibilidad de las variables es una única cláusula.'],20/20,['Angel Fernández Pineda']).

pr(0050-105,['Cómo', ejecutar, un, objetivo, en, 'PROLOG'],['Es bastante sencillo solo debemos escribir el nombre de la cláusula, los parametros, poner un punto y presionar enter. Ejemplo: ?- 
t(X,3) = t(4,Z). 
Prolog nos devolvera
  X = 4,   
  Z = 3 ? 
Observese que los objetivos acaban en un punto (.), si pulsamos intro antes de escribir el punto ocurre un salto de línea, pero nada más. Cuando escribimos el punto y pulsamos INTRO es cuando se ejecuta el objetivo.'],20/20,['Angel Fernández Pineda']).

pr(0050-106,['Cómo', terminar, la, 'aplicación', 'y', salir, de, 'PROLOG'],['podemos terminar la aplicación ejecutando el predicado halt/0, o bien pulsando CTRL-D:
Ejemplo:
  ?- halt. 
  Process Ciao/Prolog<1> finished '],20/20,['Angel Fernández Pineda']).

pr(0050-107,['Cómo', guardar, un, archivo, en, formato, 'PROLOG'],['Los programas se escriben en ficheros de texto, con extension .pl y pueden contener comentarios y código. Para ello puede utilizar cualquier editor de texto. '],20/20,['Angel Fernández Pineda']).

pr(0050-108,['Cómo', evaluar, expresiones, 'aritméticas', en, 'PROLOG'],['En Prolog es fácil construir expresiones aritméticas. Se hace en Prolog mediante el predicado is, cuyo modo de uso es is(Var,Expr). Además, el argumento Expr debe ser un término cerrado (es decir, que no contenga variables libres). Por ejemplo, vamos a sumar dos y dos:
?-  X is 2 + 2. 
X = 4 
yes'],20/20,['Angel Fernández Pineda']).

pr(0050-109,['Tipos', de, datos, en, 'PROLOG'],['Todos sabemos que los datos que maneja Prolog son los términos. Sin embargo, podemos construir otros tipos de datos a partir de estos. De hecho, algunos están predefinidos para mayor gloria del programador, son el caso de las listas y las cadenas de caracteres. En cualquier caso, se debe asumir que Prolog no es un lenguaje tipado, puesto que no existen declaraciones explícitas de tipo tal y como ocurre en los lenguajes imperativos. El hecho de que no existan dichas declaraciones se debe sencillamente a que no hacen falta.'],20/20,['Angel Fernández Pineda']).

pr(0050-110,['Qué', son, 'Registros', en, 'PROLOG'],['Los registros son agrupaciones ordenadas de datos que en Prolog podemos escribir como términos que almacenan cada dato en un argumento. Por ejemplo, supongamos que queremos un registro para representar los datos personales de la gente:
 persona(‘Eva’,‘Fina’,‘Y Segura’,15)
 persona(‘Fulanito’,‘De Tal’,‘Y Tal’,32)
Mediante el término persona representamos a un individuo. El primer argumento es el nombre, el segundo y tercero son los apellidos y el cuarto es la edad.
Puesto que los términos son anidables podemos crear registros complejos:
 persona(‘Menganito’,edad(32),direccion(‘Leganitos’,13,‘Madrid’)) '],20/20,['Angel Fernández Pineda']).

pr(0050-111,['Árboles', en, 'PROLOG'],['Puesto que los términos pueden ser recursivos es fácil crear estructuras de datos recurrentes. Como ejemplo, veamos como definir árboles binarios. Para ello representamos el árbol vacío mediante una constante, por ejemplo, empty, y un nodo cualquiera puede ser representado mediante el término tree. El primer argumento representa un dato cualquiera asociado al nodo. El segundo argumento representa la rama izquierda, y el tercer argumento la correspondiente rama derecha. Son ejemplos de árboles:
 empty
 tree(dato1,empty,empty)
 tree(dato1,tree(dato2,empty,empty),tree(dato3,empty,empty))
 tree(dato4,empty,tree(dato5,tree(dato6,empty,empty),empty)) '],20/20,['Angel Fernández Pineda']).

pr(0050-112,['Listas', en, 'PROLOG'],['Las listas en Prolog podrían definirse del mismo modo que los árboles puesto que los términos se pueden anidar todas las veces que sea necesario. Por ejemplo, la lista de números del uno al cinco se puede representar así:
 lista(1,lista(2,lista(3,lista(4,lista(5,vacio)))))
Afortunadamente, las listas están predefinidas en el lenguaje para una mayor comodidad. De modo que la lista anterior la podemos escribir así:
 [1, 2, 3, 4, 5] 
Esta es la forma de escribir las listas definiendo todos los elementos, pero podemos manipular las listas distinguiendo cabeza y resto: [C|R]. Donde la variable C representa la cabeza, y R el resto. Por ejemplo:
 L = [1, 2, 3, 4, 5], M = [0|L].
La lista M sería equivalente a [0,1,2,3,4,5].'],20/20,['Angel Fernández Pineda']).

pr(0050-113,['Cadenas', de, caracteres, en, 'PROLOG'],['Las cadenas de caracteres son en Prolog listas de códigos ASCII. Se pueden escribir de una manera cómoda poniendo los caracteres entre comillas dobles. Por ejemplo, la expresión "ABC" es en realidad la lista [65,66,67]. Así, podemos tratar las cadenas de caracteres como cadenas o como listas según nos interese. Naturalmente, todo el código que nos sirve para listas nos sirve para cadenas. Por ejemplo, el predicado que concatena dos listas también sirve para concatenar dos cadenas de texto.'],20/20,['Angel Fernández Pineda']).

pr(0050-114,['Constantes', en, 'PROLOG'],['Las constantes en Prolog son términos cero-arios (átomos). A pesar de su simpleza, pueden ser muy útiles para representar información ya que pueden contener cualquier caracter. Se utilizan, por ejemplo, para representar nombres de ficheros. Recuerde que las constantes numéricas también son términos cero-arios (pero no son átomos). '],20/20,['Angel Fernández Pineda']).

pr(0050-115,['Cómo', estamos, seguros, de, que, un, argumento, es, de, un, tipo, determinado, en, 'PROLOG'],['Se realiza un tests de tipo. Éstos son predicados que (habitualmente) reciben un dato como argumento y fallan si el argumento no es del tipo esperado.'],20/20,['Angel Fernández Pineda']).

pr(0050-116,['Algunos', tests, de, tipo, predefinidos, en, 'PROLOG'],['Existen predicados predefinidos para comprobar algunos tipos básicos. Los más importantes son (Predicado / Test): integer / Comprueba si su argumento es un número entero, float / Comprueba si el argumento es un número decimal, number / Comprueba si el argumento es un número (entero o decimal), var / Comprueba si el argumento es una variable libre'],20/20,['Angel Fernández Pineda']).

pr(0050-117,['Cuál', es, la, desventaja, de, los, tests, de, tipo, en, 'PROLOG'],['La desventaja de los tests de tipo es que resulta necesario ejecutarlos. Esto añade un tiempo extra de ejecución a nuestra aplicación que no sirve para nada útil.'],20/20,['Angel Fernández Pineda']).

pr(0050-118,['Qué', es, el, corte, en, 'PROLOG'],['El corte es un predicado predefinido que no recibe argumentos. Se representa mediante un signo de admiración (!).El corte tiene la propiedad de eliminar los puntos de elección del predicado que lo contiene.
Es decir, cuando se ejecuta el corte, el resultado del objetivo (no sólo la cláusula en cuestión) queda comprometido al éxito o fallo de los objetivos que aparecen a continuación. Es como si a Prolog "se le olvidase" que dicho objetivo puede tener varias soluciones. Otra forma de ver el efecto del corte es pensar que solamente tiene la propiedad de detener el backtracking cuando éste se produce. Es decir, en la ejecución normal el corte no hace nada. Pero cuando el programa entra en backtracking y los objetivos se recorren marcha atrás, al llegar al corte el backtracking se detiene repentinamente forzando el fallo del objetivo.'],20/20,['Angel Fernández Pineda']).

pr(0050-119,['Para', que, se, usa, el, corte, en, 'PROLOG'],['El corte se utiliza muy frecuentemente. Los motivos por los que se usa el corte son, por orden de importancia, los siguientes:
1. Para optimizar la ejecución. El corte sirve para evitar que por culpa del backtracking se exploren puntos de elección que, con toda seguridad, no llevan a otra solución (fallan).
2. Para facilitar la legibilidad y comprensión del algoritmo que está siendo programado. A veces se sitúan cortes en puntos donde, con toda seguridad, no van a existir puntos de elección para eliminar, pero ayuda a entender que la ejecución sólo depende de la cláusula en cuestión.
3. Para implementar algoritmos diferentes según la combinación de argumentos de entrada. Algo similar al comportamiento de las sentencias case en los lenguajes imperativos.
4. Para conseguir que un predicado solamente tenga una solución. Esto nos puede interesar en algún momento. Una vez que el programa encuentra una solución ejecutamos un corte. Así evitamos que Prolog busque otras soluciones aunque sabemos que éstas existen.'],20/20,['Angel Fernández Pineda']).

pr(0050-120,['Corte', 'y', fallo, en, 'PROLOG'],['Es muy habitual encontrar la secuencia de objetivos corte-fallo: !,fail. El predicado fail es un predicado predefinido que siempre falla. Se utiliza para detectar prematuramente combinaciones de los argumentos que no llevan a solución, evitando la ejecución de un montón de código que al final va a fallar de todas formas.'],20/20,['Anonimo']).

pr(0050-121,['Algoritmos', 'y', 'técnicas', de, 'programación', en, 'PROLOG'],['Los algoritmos utilizados en Prolog están íntimamente ligados a los términos y su estructura anidada/recursiva. Por eso, la técnica de programación por excelencia es la recursividad. Sin embargo existen técnicas propias del lenguaje como son los bucles de fallo.'],20/20,['Angel Fernández Pineda']).

pr(0050-122,['Recursividad', en, 'PROLOG'],['La recursividad es la técnica por antonomasia para programar en Prolog. En Prolog no existen bucles for, while, do-while, ni sentencias case, ni otras construcciones absurdas. En Prolog no hacen falta. Todos los términos en Prolog pueden ser recursivos, y gracias a la unificación, podemos recorrer sus argumentos a voluntad. La estructura de datos más significativa con respecto a la recursividad son las listas.'],20/20,['Angel Fernández Pineda']).

pr(0050-123,['Parámetros', de, 'acumulación', en, 'PROLOG'],['La técnica de parámetros de acumulación se suele utilizar en combinación con la recursividad. Consiste en un argumento auxiliar (o varios de ellos) que almacena la solución parcial en cada paso recursivo. Cuando llegamos al caso base, la solución parcial es la solución total.'],20/20,['Angel Fernández Pineda']).

pr(0050-124,['La', 'negación', por, fallo, en, 'PROLOG'],['La negación en Prolog consiste en un predicado predefinido. La negación recibe como argumento un objetivo. Si dicho objetivo tiene éxito la negación falla y viceversa. La negación no es la negación lógica sino la negación por fallo. Esto significa que Prolog asume que aquellos objetivos que no tienen solución (fallan) son falsos. Esto se denomina asunción de mundo cerrado porque damos por supuesto que todo aquello que no se puede deducir (porque no ha sido escrito en el programa) es falso. La negación por fallo solamente coincide con la negación lógica cuando el objetivo negado es un término cerrado (no contiene variables libres).'],20/20,['Angel Fernández Pineda']).

pr(0050-125,['Parámetros', de, 'acumulación', en, 'PROLOG'],['La técnica de parámetros de acumulación se suele utilizar en combinación con la recursividad. Consiste en un argumento auxiliar (o varios de ellos) que almacena la solución parcial en cada paso recursivo. Cuando llegamos al caso base, la solución parcial es la solución total.'],20/20,['Angel Fernández Pineda']).

pr(0050-126,['Qué', es, orden, superior, en, 'Programación'],['Se podría definir el concepto de orden superior como la capacidad de un lenguaje para manejar su propio código como una estructura de datos más. El orden superior existe en muchos lenguajes pero, debido a que se implementa de formas distintas, no se suele usar esta denominación. Algunos ejemplos:
	En el lenguaje C: los punteros a funciones. Estos permiten pasar funciones como argumentos.
	En Java y otros lenguajes OO: las referencias a instancias. Permiten ejecutar código distinto dependiendo de la referencia utilizada.
Un aspecto particular del orden superior es la capacidad de pasar un procedimiento o función como argumento a otro procedimiento o función. Esta es la característica más utilizada.'],20/20,['Angel Fernández Pineda']).

pr(0050-127,['Qué', es, 'Metaprogramación'],['La metaprogramación es una implementación posible del orden superior tremendamente versátil. Consiste en la posibilidad de que el código se modifique a sí mismo. Para entender la diferencia entre metaprogramación y orden superior pondremos un ejemplo:
	2) Escribimos una función, y la pasamos como argumento a otra función. Ésta última la ejecuta sin saber exactamente qué está ejecutando. Esto es una característica de orden superior.
	1) Tomamos una cadena de texto donde almacenamos el nombre de una función, por ejemplo, tabla_logaritmo. Por otra parte construimos una lista con dos elementos, los  números 3 y 5, por ejemplo. Ahora juntamos la lista con la cadena de texto y generamos
una llamada válida a la función tabla_logaritmo(3,5). La llamada se ejecuta. Esto es metaprogramación.
Prolog cuenta con esta característica.'],20/20,['Angel Fernández Pineda']).

pr(0050-128,['Manipulación', de, 'términos', en, 'PROLOG'],['El predicado functor es uno de los más útiles entre la biblioteca standard Prolog. Este predicado permite extraer el functor y la aridad de un término cualquiera. Pero, al ser reversible, también permite construir nuevos términos a partir del functor y la aridad deseada. Los modos de uso son:
	functor(Termino,Functor,Aridad).
El siguiente ejemplo muestra como se extrae functor y aridad:
?- functor(termino(arg(1)),Functor,Aridad).
Functor = termino
Aridad = 1
yes '],20/20,['Angel Fernández Pineda']).

pr(0050-129,['Manipulación', de, argumentos, con, "arg", en, 'PROLOG'],['Cuando ya sabemos que podemos construir términos, sería deseable poder asignarles argumentos. Uno de los predicados que permiten esto es arg. Para ello se indica el número de índice del argumento deseado, empezando a numerar por el 1 de izquierda a derecha. El modo de uso es:
	arg(Indice,Termino,Argumento).
El predicado arg solamente es útil cuando se conoce a priori el número de argumentos del
término manipulado, pero en combinación con functor resulta muy eficaz.'],20/20,['Angel Fernández Pineda']).

pr(0050-130,['Manipulación', de, argumentos, con, "univ", en, 'PROLOG'],['En ocasiones resulta mucho más útil convertir los argumentos de un término en una lista y viceversa. Esta es la función de "univ", nombre que recibe el operador infijo =... Su modo de uso son:
	Termino =.. Lista
La lista contiene siempre el functor del término en la primera posición, y los argumentos en el resto de la lista.'],20/20,['Angel Fernández Pineda']).

