
%María Daniela Baptista Theuerkauf, version alfa 1.0 2015-02-12

pr(0001-1, [si,p, =, 'V', y, q, =, 'V', entonces, 'Â¬', p, y, q , = ], ['F'], 20/20, ['María Daniela Baptista Theuerkauf']).

leccion(contencion_y_pertenencia):-
pr(0001-2,['Indique pertenencia (E), contencion (C), no pertenencia (noE) o no contencion (noC). {a,b} _ {a,b,c}'],['C'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-3,['Indique pertenencia (E), contencion (C), no pertenencia (noE) o no contencion (noC). b _ {a,b,c}'],['E'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-4,['Indique pertenencia (E), contencion (C), no pertenencia (noE) o no contencion (noC). e _ {a,b,c}'],[noE],_,['María Daniela Baptista Theuerkauf']),
pr(0001-5,['Indique pertenencia (E), contencion (C), no pertenencia (noE) o no contencion (noC). {a} _ {a,b,c}'], ['C'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-6,['Indique pertenencia (E), contencion (C), no pertenencia (noE) o no contencion (noC). {d} _ {a,b,c}'], [noC],_,['María Daniela Baptista Theuerkauf']),
pr(0001-7,['Indique pertenencia (E), contencion (C), no pertenencia (noE) o no contencion (noC). {a,c,b} _ {a,b,c}'], ['C'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-8,['Indique pertenencia (E), contencion (C), no pertenencia (noE) o no contencion (noC). {1} _ {{1},{2},{3}}'], ['E'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-9,['Indique pertenencia (E), contencion (C), no pertenencia (noE) o no contencion (noC). {{1},{2}} _ {{1},{2},{3}}'],['C'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-10,['Indique pertenencia (E), contencion (C), no pertenencia (noE) o no contencion (noC). {2,1} _ {{1},{2},{1,2}}'],['E'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-11,['Indique pertenencia (E), contencion (C), no pertenencia (noE) o no contencion (noC). {a} _ {{b},{c}}'],[noE],_,['María Daniela Baptista Theuerkauf']).

leccion(igualdad_de_conjuntos):-
pr(0001-12,['Determine si los conjuntos A y B son iguales. A = {1,2} B = {0,3,4}'],[distintos],_,['María Daniela Baptista Theuerkauf']),
pr(0001-13,['Determine si los conjuntos A y B son iguales. A = {2,3} B = {3,2}'],[iguales],_,['María Daniela Baptista Theuerkauf']),
pr(0001-14,['Determine si los conjuntos A y B son iguales. A = {2n² : n ∈ ℕ y 0 ≤ n ≤ 3} B = {2,0,8,18}'], [iguales],_,['María Daniela Baptista Theuerkauf']),
pr(0001-15,['Determine si los conjuntos A y B son iguales. A = {1,2,1} B = {1,1,2}'],[iguales],_,['María Daniela Baptista Theuerkauf']),
pr(0001-16,['Determine si los conjuntos A y B son iguales. A = {n² + 1 : n ∈ ℕ y 0 ≤ n ≤ 3} B = {x ∈ ℕ : x = n² + 1 para algun n ∈ ℕ con 0 ≤ n ≤ 3}'], [iguales],_,['María Daniela Baptista Theuerkauf']),
pr(0001-17,['Determine si los conjuntos A y B son iguales. A = {n ∈ ℕ : n + 1 ≥ 2} B = {n ∈ ℤ : n + 1 ≥ 2}'],[iguales],_,['María Daniela Baptista Theuerkauf']),
pr(0001-18,['Determine si los conjuntos A y B son iguales. A = {x ∈ ℕ : 3 ≤ x ≤ 6} B = {x : x ∈ ℕ y 3 ≤ x ≤ 6}'],[iguales],_,['María Daniela Baptista Theuerkauf']),
pr(0001-19,['Determine si los conjuntos A y B son iguales. A = {x ∈ ℕ : 1 < x < 6} B = {n : n ∈ ℕ y 1 ≤ n ≤ 6}'],[distintos],_,['María Daniela Baptista Theuerkauf']).

leccion(cardinalidad_de_un_conjunto):-
pr(0001-20, ['Indique la cardinalidad del conjunto A = {1,2,3}'],[3],_,['María Daniela Baptista Theuerkauf']),
pr(0001-21, ['Indique la cardinalidad del conjunto C = {0,1,2}'],[3],_,['María Daniela Baptista Theuerkauf']),
pr(0001-22, ['Indique la cardinalidad del conjunto D = {2,3,4,5,6}'],[5],_,['María Daniela Baptista Theuerkauf']),
pr(0001-23, ['Indique la cardinalidad del conjunto A = {0,1,4,7,8,10,22,456}'],[8],_,['María Daniela Baptista Theuerkauf']),
pr(0001-24, ['Indique la cardinalidad del conjunto B = {0,1,2,2,1}'],[3],_,['María Daniela Baptista Theuerkauf']),
pr(0001-25, ['Indique la cardinalidad del conjunto C = {1,1,1,1,1,1,1,1,1,1}'],[1],_,['María Daniela Baptista Theuerkauf']),
pr(0001-26, ['Indique la cardinalidad del conjunto A = {2,3,6,4,1,8,2,8,56,45,34,56,89,12,21}'],[12],_,['María Daniela Baptista Theuerkauf']).


leccion(funciones):-
pr(0001-27,['Considere el siguiente conjunto de pares ordenados: A = {(1,2), (2,2), (3,5), (4,6), (6,7)}. ¿Es A una función?'],['Si'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-28,['Considere el siguiente conjunto de pares ordenados: B = {(1,3), (2,5), (3,7), (4,5)}. ¿Es B una función?'],['Si'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-27,['Considere el siguiente conjunto de pares ordenados: C = {(1,2), (2,2), (3,2), (4,2), (5,2), (6,2), (7,2)}. ¿Es C una función?'],['Si'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-29,['Considere el siguiente conjunto de pares ordenados: D = {(0,a), (1,b), (2,a), (2,d), (3,e), (0,u)}. ¿Es D una función?'],['No'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-30,['Considere el siguiente conjunto de pares ordenados: E = {(a,a), (a,b), (a,c), (a,d), (a,e)}. ¿Es E una función?'],['No'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-31,['Considere el siguiente conjunto de pares ordenados: F = {(g,4), (u,3), (k,4), (n,0), (w,8), (i,6), (c,4), (f,7)}. ¿Es F una función?'],['Si'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-32,['Considere el siguiente conjunto de pares ordenados: G = {(g,4), (g,4), (n,0), (f,7), (i,6), (c,4), (f,7)}. ¿Es G una función?'],['Si'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-33,['Considere el siguiente conjunto de pares ordenados: H = {(a,B), (b,A), (c,C), (d,C), (e,D)}. ¿Es H una función?'],['Si'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-34,['Considere el siguiente conjunto de pares ordenados: I = {(g,4), (u,3), (k,4), (g,0), (w,8), (u,6), (c,4), (f,7)}. ¿Es I una función?'],['No'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-35,['Sea A = {1, 2}, B = {3, 4, 5}, R = {(1, 3),(1, 4),(2, 3)} y R ⊂ AxB. ¿Es R una función?'],['No'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-36,['Sea A = {1, 2}, B = {3, 4, 5}, R = {(1, 3),(2, 4)} y R ⊂ AxB. ¿Es R una función?'],['Si'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-37,['Sea A = {a, b, c}, B = {3, 4}, R = {(a, 3),(b, 3)} y R ⊂ AxB. ¿Es R una función?'],['No'],_,['María Daniela Baptista Theuerkauf']).

leccion(clasificacion_de_funciones) :-
pr(0001-38,['Sea A = {a, b, c, d}, B = {B, A, D, C, F}, R = {(a,B), (b,A), (c,C), (d,D)} y R ⊂ AxB. ¿Es R una función inyectiva, sobreyectiva o biyectiva?'],['Inyectiva'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-39,['Sea A =  {a, b, c, d, e}, B = {1, 2, 3, 4}, R = {(a,2), (b,1), (c,3), (d,3), (e,4)} y R ⊂ AxB. ¿Es R una función inyectiva, sobreyectiva o biyectiva?'],['Sobreyectiva'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-40,['Sea A =  {1, 2, c, d, e}, B = {A, B, 5, 4, 3}, R = {(1,B), (2,A), (c,5), (d,3), (e,4)} y R ⊂ AxB. ¿Es R una función inyectiva, sobreyectiva o biyectiva?'],['Biyectiva'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-41,['Considere la función f(x) = x² del conjunto de los números naturales ℕ a ℕ. ¿Es f una función inyectiva, sobreyectiva o biyectiva?'],['Inyectiva'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-42,['Considere la función f(x) = x² del conjunto de números reales positivos al mismo conjunto. ¿Es f una función inyectiva, sobreyectiva o biyectiva?'],['Biyectiva'],_,['María Daniela Baptista Theuerkauf']).

leccion(relaciones):-
pr(0001-43,['Determine el dominio de la siguiente relación. R = {(1, 1),(1, 2),(1, 3),(1, 4),(2, 2),(2, 4),(3, 3),(4, 4)}'],['{1,2,3,4}'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-44,['Determine el rango de la siguiente relación. R = {(n, 2n) : n ∈ ℕ U {0}}'],['Los números pares.'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-45,['Determine el dominio de la siguiente relación. R = {(−1, 1),(−2, 2),(−3, 3),(−4, 4),(−5, 5)}'],['{-1,-2,-3,-4,-5}'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-46,['Determine el rango de la siguiente relación. R = {(n, 2n + 1) : n ∈ ℕ  U {0}}'],['Los números impares.'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-47,['Sea A = {0, 1, 2}. Escriba el conjunto de pares ordenados que describen la relación indicada. nRm, si n ≤ m y n^m ∈ A'],['(0,0), (0,1), (0,2), (1,1), (1,2), (2,2)'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-48,['Sea A = {0, 1, 2, 3, 4}. Escriba el conjunto de pares ordenados que describen la relación indicada. nRm, si m · n = 0 y n^m ∈ A'],['(0,0), (0,1), (0,2), (0,3), (0,4), (1,0), (2,0), (3,0), (4,0)'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-49,['Considere la relación dada por R = {(1, 1),(1, 2),(1, 3),(1, 4),(2, 2),(2, 4),(3, 3),(4, 4)}. Indique si R es reflexiva, simétrica, transitiva o de equivalencia.'],['Reflexiva y transitiva'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-50,['Considere la relación dada por R = {(a, a),(a, b),(b, a),(b, b),(b, c),(b, e),(c, e),(b, d),(d,a),(e,e)}. Indique si R es reflexiva, simétrica, transitiva o de equivalencia.'],['Transitiva'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-51,['Considere la relación dada por R = {(a, a),(b, b),(c, c),(d, d),(e, e),(a, e),(b, c),(c, b),(e,a),}. Indique si R es reflexiva, simétrica, transitiva o de equivalencia'],['Relación de Equivalencia'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-52,['El conjunto de alumnos que se encuentra en su salón de clases S = {Pedro, Javier, Esteban} y R : A y B están en la misma habitación. ¿Es R una relación de equivalencia?'],['Si'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-53,['Considere la relación dada por R = {(1, 1),(1, 2),(2, 1),(2, 2),(3, 4),(4, 3),(3, 3),(4, 4)}.¿Es R una relación de equivalencia'],['Si'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-54,['Considere la relación dada por R = {(1, 1),(1, 2),(2, 1),(2, 2),(2, 3),(2, 5),(3, 5),(2, 4),(4,1),(5,5)}. ¿Es R una relación de equivalencia?'],['No'],_,['María Daniela Baptista Theuerkauf']).


leccion(variaciones):-
pr(0001-55,['¿Cuántos números diferentes de 4 cifras pueden formarse con las cifras del sistema decimal?'],['5040 números'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-56,['En una carrera de 100 metros participan 8 corredores. ¿De cuántas formas diferentes se podrían repartir las medallas de oro, plata y bronce?'],['336 formas'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-57,['¿Cuántas maneras diferentes se puede escoger la dirección de una club de tenis, formada por presidente, vicepresidente y tesorero? Sabiendo que hay 16 candidatos idóneos.'],['3360 maneras'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-58,['¿Cuántos números de tres cifras pueden hacerse con el número 45389'],['60 números'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-59,['Una habitación tiene 6 puertas. ¿De cuántas maneras puede una persona entrar y salir por puertas diferentes?'],['30 maneras'],_,['María Daniela Baptista Theuerkauf']).

leccion(permutaciones):-
pr(0001-60,['¿De cuántas formas distintas pueden sentarse ocho personas en una fila de ocho butacas?'],['40320 formas'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-61,['¿Cuántos números de 5 cifras diferentes se puede formar con los dígitos: 1, 2, 3, 4, 5.?'],['120 números'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-62,['En una carrera de caballos figuran 5 ejemplares. Suponiendo que llegan de uno en uno a la meta ¿De cuántas maneras diferentes pueden llegar?'],['120 maneras'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-63,['¿De cuántas maneras diferentes pueden colocarse 4 bomberos en un fila?'],['24 maneras'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-64,['En una carrera de 100 metros participan 10 corredores. ¿De cuántas maneras pueden llegar a la meta, suponiendo que llegan de uno a uno?'],['3628800 maneras'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-65,['Se dispone de 4 libros de historia y 5 libros de arte. Cada libro es de una editorial diferente. ¿De cuántas maneras se pueden todos ellos en un estante?'],['362880'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-66,['Bob, Juan, Lucas y Pedro juegan un torneo de tenis. La regla del torneo es que al final no habrá ningún empate entre ninguno de ellos. ¿Cuántas clasificaciones diferentes pueden haber?'],['24 clasificaciones'],_,['María Daniela Baptista Theuerkauf']).

leccion(combinaciones):-
pr(0001-67,['¿Cuántas sumas diferentes, de dos sumandos cada una, se pueden obtener con los números 4, 6, 10, 15, 25 y 28?'],['15 sumas'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-68,['Se dispone de 5 jugos de fruta diferentes. ¿Cuántos sabores se pueden formar mezclándolos en la misma porción?'],['31 sabores'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-69,['Las diagonales de un polígono se obtienen uniendo dos vértices no adyacentes, sabiendo esto ¿Cuántas diagonales tiene un dodecágono?'],['54 diagonales'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-70,['Ernesto tiene 8 amigos y desea invitarlos a cenar, pero sólo puede invitar a 5 simultáneamente. ¿Cuántos grupos distintos de invitados puede tener?.'],['56 grupos'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-71,['Se dispone de 11 personas para la limpieza de un local comercial. Se requiere formar grupos de 4 integrantes para dividir el trabajo. ¿Cuántos grupos diferentes pueden hacerse?'],['330 grupos'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-72,['Carlos asiste a un festival de comida donde hay 10 platos de su agrado. Si solo le pueden servir 4 de estos. ¿Cuántas comidas diferentes puede servirse?'],['210 comidas'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-73,['Con los números 24, 35, 50, 55 y 60. ¿Cuántas sumas diferentes pueden hacerse donde intervengan los 5 números?'],['1 suma'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-74,['¿De cuántas maneras se puede escoger un comité, compuesto por 3 hombres y 2 mujeres, de un grupo de 7 hombres y 5 mujeres?'],['350 maneras'],_,['María Daniela Baptista Theuerkauf']).

leccion(identificando_combinaciones_y_variaciones):-
pr(0001-75,['Especifique si el siguiente ejercicio se trata de una combinación o una variación. ¿Cuántos equipos diferentes de 3 personas pueden formarse si se tiene un grupo de 6 personas para escoger?'],['Combinación'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-76,['Especifique si el siguiente ejercicio se trata de una combinación o una variación. ¿Cuántas representaciones diferentes serán posibles formar, si se desea que consten de Presidente, Secretario, Tesorero, Primer Vocal y Segundo Vocal?, sí esta representación puede ser formada de entre 25 miembros del sindicato de una pequeña empresa.'],['Variación'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-77,['Especifique si el siguiente ejercicio se trata de una combinación o una variación. Pedro, Paula, José, Gabriela, Oscar y Beatriz van al cine, cuando ellos entran a la sala solo hay seis butacas disponibles. ¿De cuántas formas diferentes pueden ellos sentarse?'],['Variación'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-78,['Especifique si el siguiente ejercicio se trata de una combinación o una variación. ¿Cuántas maneras diferentes hay de asignar los primeros tres premios de una competencia de natación? Sabiendo que hay 60 participantes.'],['Variación'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-79,['Especifique si el siguiente ejercicio se trata de una combinación o una variación. ¿Cuántos arcoiris se pueden formar con los 7 colores del espectro?'],['Variación'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-80,['Especifique si el siguiente ejercicio se trata de una combinación o una variación. ¿Cuántas maneras diferentes hay de asignar las posiciones de salida de 10 autos que participan en una carrera de fórmula uno?'],['Variación'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-81,['Especifique si el siguiente ejercicio se trata de una combinación o una variación. ¿Cuántos alumbrados distintos de 4 bombillas se pueden hacer con 9 bombillas de diferente diseño?'],['Variación'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-82,['Especifique si el siguiente ejercicio se trata de una combinación o una variación. Con los números 34, 67, 87, 90 y 56. ¿Cuántas sumas diferentes pueden hacerse?'],['Combinación'],_,['María Daniela Baptista Theuerkauf']).

%pr enviadas el 2015-01-28 (sin vidas asignadas)
leccion(grupos):-
pr(0001-83,['Sea + una operación definida sobre un conjunto C. ¿Qué condiciones deben cumplirse para que (C,+) sea considerado un grupo?'],['Que sea cerrado respecto a la operación, se cumpla la propiedad asociativa [a (+) (b (+) c) = (a (+) b) (+) c], que tenga elemento neutro [a (+) e = a] y que tenga elemento simétrico [a (+) a" = e]'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-84,['Sea * un operación definida sobre un conjunto G que cumple con las siguientes condiciones: Es cerrado respecto a la operación y tiene un elemento tal que a (*) e = a. ¿Es (G,*) un grupo?'],['No, debe cumplirse también la propiedad asociativa y debe tener un elemento simétrico.'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-85,['Sea + una operación definida sobre un conjunto J que cumple con las siguientes condiciones: Tiene un elemento tal que a (+) a" = e, un elemento tal que a (+) e = a y cumple la propiedad asociativa. ¿Es (J,+) un grupo?'],['No, debe cumplirse que sea cerrado respecto a la operación.'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-86,['Sea * una operación definida sobre un conjunto P que cumple con las siguientes condiciones: Tiene un elemento tal que a (*) a" = e, es cerrado respecto a la operación, tiene un elemento tal que a (*) e = a y cumple la propiedad asociativa. ¿Es (P,*) un grupo?'],['Si'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-87,['¿Cuándo una operación binaria es conmutativa?'],['Cuando se cumple que a*b = b*a'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-88,['¿Cuándo una operación binaria es asociativa?'],['Cuando se cumple que (a+b)+c=a+(b+c)'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-89,['¿Una operación binaria es conmutativa sí y solo si a*b = b*b?'],['Falso'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-90,['Sea ℝ el conjunto de los números reales y * una operación definida sobre ℝ. x,y ∈ ℝ | x*y = √(x + y). ¿Es (ℝ, *) cerrado con respecto a *?'],['No'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-91,['Sea A el conjunto de los números pares y ^ una operación definida sobre ℝ. x,y ∈ A | x^y = x + y. ¿Es (ℝ, ^) cerrado con respecto a ^?'],['Si'],_,['María Daniela Baptista Theuerkauf']),

%pr92 hasta la pr 99: ejercicios extraídos del libro A First Course in Abstract Algebra, 7th Edition. Author: John B. Fraleigh.
pr(0001-92,['Sea * definida sobre ℤ como a*b = a - b. ¿Es la operación binaria * conmutativa?'],['No es conmutativa porque 1-2 ≠ 2-1'],_,['Autor: John B. Fraleigh; Traductor: Maria Daniela Baptista Theuerkauf, extraído de A First Course in Abstract Algebra, 7th Edition.']),
pr(0001-93,['Sea ^ definida sobre los números racionales como a^b = ab + 1. ¿Es la operación binaria ^ conmutativa?'],['Si es conmutativa porque ab + 1 = 1 + ab para todo a, b ∈ Q'],_,['Autor: John B. Fraleigh; Traductor: Maria Daniela Baptista Theuerkauf, extraído de A First Course in Abstract Algebra, 7th Edition.']),
pr(0001-94,['Sea * definida sobre los números racionales como a*b = ab/2. ¿Es la operación binaria * conmutativa?'],['Si es conmutativa porque ab/2 = ba/2 para todo a,b ∈ Q'],_,['Autor: John B. Fraleigh; Traductor: Maria Daniela Baptista Theuerkauf, extraído de A First Course in Abstract Algebra, 7th Edition.']),
pr(0001-95,['Sea $ definida sobre ℤ como a$b = a - b. ¿Es la operación binaria $ asociativa?'],['No es asociativa porque 1-(2-3) ≠ (1-2)-3 '],_,['Autor: John B. Fraleigh; Traductor: Maria Daniela Baptista Theuerkauf, extraído de A First Course in Abstract Algebra, 7th Edition.']),
pr(0001-96,['Sea * definida sobre los números racionales como a*b = ab + 1. ¿Es la operación binaria * asociativa?'],['No es asociativa porque (a*b)*c = (ab+1)*c = abc + c + 1 mientra que a*(b*c) = a ∗ (bc + 1) = abc + a + 1. Necesitamos que a≠c'],_,['Autor: John B. Fraleigh; Traductor: Maria Daniela Baptista Theuerkauf, extraído de A First Course in Abstract Algebra, 7th Edition.']),
pr(0001-97,['Sea * definida sobre los números racionales como a*b = ab/2. ¿Es la operación binaria * asociativa?'],['Si es asociativa porque a*(b*c) = a*(bc/2) = a(bc/2)/2 = abc/4 y (a ∗ b) ∗ c = (ab/2) ∗ c = [(ab/2)c]/2 = abc/4 también.'],_,['Autor: John B. Fraleigh; Traductor: Maria Daniela Baptista Theuerkauf, extraído de A First Course in Abstract Algebra, 7th Edition.']),
pr(0001-98,['Sea * definida sobre ℤ como a*b = a^b. ¿Es la operación binaria * conmutativa?'],['No es conmutativa porque 3*2 = 3² ≠ 2*3 = 2³ '],_,['Autor: John B. Fraleigh; Traductor: Maria Daniela Baptista Theuerkauf, extraído de A First Course in Abstract Algebra, 7th Edition.']),
pr(0001-99,['Sea * definido sobre ℤ+ como a*b = 2^(ab). ¿Es la operación binaria * conmutativa?'],['Si es conmutativa porque 2^(ab) = 2^(ba) para todo a,b ∈ ℤ+'],_,['Autor: John B. Fraleigh; Traductor: Maria Daniela Baptista Theuerkauf, extraído de A First Course in Abstract Algebra, 7th Edition.']),

%nuevas pr; enviadas el 2015-02-10
pr(0001-100,['Sea (G,+) un grupo que cumple con la propiedad conmutativa se dice que es un grupo... '],['Abeliano'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-101,['Sea · una operación definida sobre un conjunto C. ¿Qué condiciones deben cumplirse para que (C,·) sea considerado un semigrupo?'],['Que sea cerrado respecto a la operación y que se cumpla la propiedad asociativa [a (·) (b (·) c) = (a (·) b) (·) c]'],_,['María Daniela Baptista Theuerkauf']).

leccion(anillos):-
pr(0001-102,['Sean * y + operaciones definida sobre un conjunto T. ¿Qué condiciones deben cumplirse para que (T,*,+) sea considerado un anillo?'],['Respecto a la operación (*): debe ser cerrado, cumplirse la propiedad asociativa [a (*) (b (*) c) = (a (*) b) (*) c], que tenga elemento neutro [a (*) e = a] y que tenga elemento simétrico [a (*) a" = e]; respecto a la operación (+): debe ser cerrado y que se cumpla la propiedad asociativa [a (+) (b (+) c) = (a (+) b) (+) c]. Debe cumplirse la propiedad asociativa [a (*) (b (+) c)] = a (*) b + a (*) c].'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-103,['Sean + y · operaciones definidas sobre un conjunto A donde (A,+) es un grupo abeliano, (A,·) es un semigrupo. Se dice entonces que (T,+,·) un anillo'],['Falso'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-104,['Sean + y * operaciones definidas sobre un conjunto A donde (A,*) es un grupo abeliano, (A,+) es un semigrupo y se cumple que [a (*) (b (+) c)] = a (*) b (+) a (*) c]. ¿Es (T,*,+) un anillo? [Verdadero/Falso]'],['Verdadero'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-105,['Sea (B,+,·) un anillo. ¿Qué condiciones debe cumplir para que sea un anillo unitario?'],['Debe tener un elemento tal que a·e=a, es decir, un elemento neutro respecto a la segunda operación.'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-106,['Sea (A,+,*) un anillo. ¿Qué condiciones debe cumplir para que sea un anillo conmutativo?'],['Debe cumplirse la propiedad conmutativa respecto a la segunda operación, a*b = b*a'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-107,['Sea R un anillo. Decimos que a ∈ R, es una unidad si existe un b ∈ R tal que ab = 1. Escriba todas la unidades de ℤ'],['1,-1'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-108,['Escriba todas las unidades del conjunto de los números racionales (Q)'],['Q - {0}'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-109,['Sea (R,#,·) un anillo. Si 3#8 = 20, donde 3 y 8 ∈ R. ¿Cuánto es 8#3? a. 11; b. 20; c. 24; d. No se puede determinar'],['Opción a, debido a que (R,#) es un grupo abeliano'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-110,['Sea (A,#,$) un anillo. Si 3$9 = 50, 3 y 9 ∈ A. ¿Cuánto es 9$3? a. 50; b. 27; c. 12; d. No se puede determinar.'],['Opción d, no se puede determinar.'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-111,['Sea (D,#,*) un anillo. Si Δ#♦ = ○, Δ y ♦ ∈ D. ¿Cuánto es ♦#Δ? a. Δ; b. ♦; c. ○; d. No se puede determinar.'],['Opción c, debido a que (D,#) es un grupo abeliano.'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-112,['Sea (ℤ,%,#) un anillo. Si 3#4 = 8, 3#1 = 2 y 2%8 = 5. ¿Cuánto es 3#(4%1)? a. 3; b. 5; c. 15; d. No se puede determinar.'],['Opción b.'],_,['María Daniela Baptista Theuerkauf']).

%nuevas pr; enviadas 2015-02-12
leccion(dominio_de_integridad):-
pr(0001-113,['Sean + y * operaciones definida sobre un conjunto T. ¿Qué condiciones deben cumplirse para que (T,+,*) sea considerado un dominio de integridad?'],['Debe ser un anillo conmutativo con unidad y no debe tener divisores de cero.'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-114,['Sea (ℤ,#,*) un dominio de integridad y sea 1 la unidad de ℤ ¿Cuánto vale 2*1? a. 1; b. 2; c.3; d. No puede determinarse'],['Opción b'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-115,['Sea (ℤ,#,*) un dominio de integridad y sea 1 la unidad de ℤ ¿Cuánto vale 2#1? a. 3; b. 1; c.2; d. No puede determinarse'],['Opción d'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-116,['Sea (ℤ,#,*) un dominio de integridad. Si 2#3 = 8 ¿Cuánto vale 3#2? a. 5; b. 6; c.8; d. No puede determinarse'],['Opción c'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-117,['Sea (ℤ,%,*) un dominio de integridad. Si 2%8 = 100 ¿Cuánto vale 8%2? a. 10; b. 16; c.100; d. No puede determinarse'],['Opción c'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-118,['¿(ℤ,+,*) es un Dominio de integridad?'],['Si'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-119,['En ℤ, 2X = 0 implica que .. '],['X = 0'],_,['María Daniela Baptista Theuerkauf']),
pr(0001-120,['Sea (R,+,*) un anillo, a perteneciente a R con a distinto de cero, ax = 0 implica que ..'],['No se puede determinar'],_,['María Daniela Baptista Theuerkauf']).
