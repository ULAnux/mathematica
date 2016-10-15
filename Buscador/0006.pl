%Miguelangel Regalado Alcal�
%C.I: 19.894.206
%Matem�ticas Discretas
%PRs
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
%PRs del archivo 0006.pl de http://nux.ula.ve/mathematica/0006.pl,
% tomadas el 17 de febrero del 2015
% Comentarios agregados, por Miguelangel Regalado Alcal�, a comentarios
% anteriores del profesor Jacinto D�vila. Fecha: 17/02/2015
% Corregidos algunos acentos y signos de puntuaci�n. S�mbolos
% misteriosos cambiados por correspondiente acento. Fecha: 17/02/2015
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------

pr(0006-1, [ 'Leyes de De Morgan:', not(p ; q),=], [not(p) , not(q)], 20/20, ['Miguelangel Regalado Alcal�']).
pr(0006-2, [ 'Leyes de De Morgan:',not(p) , not(q),=], [not(p ; q)], 20/20, ['Miguelangel Regalado Alcal�']).
pr(0006-3, [ 'Leyes de De Morgan:', not(p , q),=], [not(p) ; not(q)], 20/20, ['Miguelangel Regalado Alcal�']).
pr(0006-4, [ 'Leyes de De Morgan:', not(p) ; not(q),=], [not(p , q)], 20/20, ['Miguelangel Regalado Alcal�']).
%
pr(0000-4, [A],[B], 100/100, ['jacinto  en ula.ve']) :- si(A,B).
pr(0000-5, [no, B], [no, A], 100/100, ['jacinto en ula.ve']) :- si(A,B).
%
pr(0006-7,[ ' Si a implica b y b implica a , y adem�s b implica c , �necesariamente a implica c? si/no '], [si], 20/20, ['Miguelangel Regalado Alcal�']).
pr(0006-8,[ ' Si a implica b , b implica c , c implica d y d implica e , Pregunta: Si se da a �necesariamente se dar� e? si/no '], [si], 20/20, ['Miguelangel Regalado Alcal�']).
pr(0006-9, [ ' Proposiciones: Si estudio paso el examen de C�lculo, Si paso el examen de C�lculo paso la materia, Si juego el partido de f�tbol mi equipo va a ganar el partido y no voy a estudiar, Si mi equipo gana el partido ser� e1 campe�n del torneo ,  Pregunta: No jugu� el partido de f�tbol �Sali� campe�n mi equipo? si/no/no se sabe '], ['no se sabe'], 20/20 , ['Miguelangel Regalado Alcal�']).

pr(0006-10,[ ' Si a implica b y b implica a , y adem�s b implica c , �necesariamente a implica c? si/no '], [no], 20/20, ['Miguelangel Regalado Alcal�']).

pr(0006-12,[ ' Si a implica b , b implica c , c implica d y d implica e , Pregunta: Si se da a �necesariamente se dar� e? si/no '], [si], 20/20, ['Miguelangel Regalado Alcal�']).

pr(0006-14, [ ' Proposici�n: Si 1 + 1 = 2 entonces 2 + 2 = 3,  Pregunta: Se cumple que 1 + 1 = 2 , �entonces 2 + 2 = 3? si/no '], [si], 20/20, ['Miguelangel Regalado Alcal�']).

% comenta 0000:
% estudio -> paso
% paso -> materia
% juego -> equipo_gana y no estudio
% equipo_gana -> campeon
% no juego
% ? campeon
% NO SE SABE. SE SABE que si juego el partido, mi equipo ganar�, y por
% lo tanto, ser� campe�n; pero, NO SE SABE, con certeza, que pasar� si
% no juego el partido.
pr(0006-15, [ ' Proposiciones: Si estudio paso el examen de C�lculo, Si paso el examen de C�lculo paso la materia, Si juego el partido de f�tbol mi equipo va a ganar el partido y no voy a estudiar, Si mi equipo gana el partido ser� e1 campe�n del torneo ,  Pregunta: No jugu� el partido de f�tbol �Sali� campe�n mi equipo? si/no/no se sabe '], ['no se sabe'], 20/20 , ['Miguelangel Regalado Alcal�']).

% comenta 0000: corregida:
% estudio -> paso
% paso -> materia
% juego -> equipo_gana y no estudio
% equipo_gana -> campeon
% juego
% ? materia
% NO SE SABE. Si no estudio, puede que tambi�n haya pasado el examen de
% C�lculo, y por lo tanto, la materia. LO QUE SI SE SABE es que jugu� el
% partido de f�tbol, por lo cual es SEGURO que mi equipo gan� y qued�
% campe�n.
pr(0006-16, [ ' Proposiciones: Si estudio paso el examen de C�lculo, Si paso el examen de C�lculo paso la materia, Si juego el partido de f�tbol mi equipo va a ganar el partido y no voy a estudiar, Si mi equipo gana el partido ser� campe�n del torneo,  Pregunta: Si jugu� el partido de f�tbol �Pas� la materia C�lculo? si/no/no se sabe '], ['no se sabe'], 20/20, ['Miguelangel Regalado Alcal�']).

% Comenta 000: corregida
% loteria -> dinero
% dinero -> (loteria y carro)
% carro <-> viaje
% viaje
% ? loteria
% NO SE SABE. Porque tambi�n puede ser, que me haya comprado un carro
% con dinero adquirido de alguna manera distinta a la loter�a. Es decir,
% ganar la loter�a no es la �nica manera de obtener dinero para
% comprarse un carro. Lo que SI ES SEGURO, es que me compr� un carro,
% porque viaj�
pr(0006-17, [ ' Proposiciones: Si me gano la loter�a tendr� dinero. Si tengo dinero quiere decir que me gan� la loter�a, y entonces me voy a comprar un carro. Si y s�lo si me compro un carro, viajar� ,  Pregunta: Yo viaj� �Me gan� la loter�a? si/no/no se sabe '], ['no se sabe'], 20/20, ['Miguelangel Regalado Alcal�']).

% Comenta 0000:
% loteria -> dinero
% dinero -> (loteria y carro)
% carro <-> viaje
% no loteria
% ? carro
% NO SE SABE. ES SEGURO que no me comprar� un carro con el DINERO de la
% loter�a, pues no gane la misma. Sin embargo, podr�a comprarme un carro
% adquiriendo el dinero de otra fuente.
pr(0006-18, [ ' Proposiciones: Si me gano la loter�a tendr� dinero. Si tengo dinero quiere decir que me gan� la loter�a, y entonces me voy a comprar un carro. Si y s�lo si me compro un carro, viajar� ,  Pregunta: No me gan� la loter�a �Me comprar� un carro? si/no/no se sabe '], ['no se sabe'], 20/20, ['Miguelangel Regalado Alcal�']).

pr(0006-113, [ '�Existe conmutatividad en las conjunciones? Es decir , �Es q , p = p , q? si/no'], ['si'], 20/20, ['Miguelangel Regalado Alcal�']).

pr(0006-114, [ '�Existe conmutatividad en las disyunciones? Es decir , �Es q ; p = p ; q? si/no'], ['si'], 20/20, ['Miguelangel Regalado Alcal�']).

pr(0006-115, ['Idempotencia:',p , p,=], [p], 20/20, ['Miguelangel Regalado Alcal�']).

pr(0006-116, ['Idempotencia:',p ; p,=], [p], 20/20, ['Miguelangel Regalado Alcal�']).

pr(0006-117, ['true/false',p , not(p),=], [false], 20/20, ['Miguelangel Regalado Alcal�']).

pr(0006-118, ['true/false',p ; not(p),=], [true], 20/20, ['Miguelangel Regalado Alcal�']).

pr(0006-119, [ 'Leyes de Absorci�n:', p ; (p ; q),=], [p], 20/20, ['Miguelangel Regalado Alcal�']).

pr(0006-120, [ 'Leyes de Absorci�n:', p , (p ; q),=], [p], 20/20, ['Miguelangel Regalado Alcal�']).

pr(0006-70,[(A ; A) , = ], [A], 20/20, ['Miguelangel Regalado Alcal�']).

pr(0006-71,[(A ; not(A)) , = ], [true], 20/20, ['Miguelangel Regalado Alcal�']).

pr(0006-72,[(A , not(A)) , = ], [fail], 20/20, ['Miguelangel Regalado Alcal�']).

pr(0006-73,[(A ; not(A)) , = ], [fail], 0/20, ['Miguelangel Regalado Alcal�']).

pr(0006-74,[(A , not(A)) , = ], [true], 0/20, ['Miguelangel Regalado Alcal�']).

pr(0006-75,[ not( not(not(A , B) , A) , not(not(A , B) , B )) , = ], [A,xor,B], 20/20, ['Miguelangel Regalado Alcal�']).

pr(0006-76,[not(not(A)) , = ], [A], 20/20, ['Miguelangel Regalado Alcal�']).

pr(0006-77,[not(not(A)) , = ], [not(A)], 0/20, ['Miguelangel Regalado Alcal�']).

% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% Otras PRs
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------

% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
%PRs de Combinatoria, tomadas de distintas p�ginas web
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------

pr(0006-200, ['�Qu� es combinatoria?'], ['La combinatoria estudia las diferentes formas en que se pueden agrupar u ordenar los elementos de un conjunto.'], 20/20, ['PR por Miguelangel Regalado Alcal�, tomada de http://es.wikibooks.org/wiki/Matem�ticas_Bachillerato_LOGSE/Combinatoria el 4 de enero del 2015']).

pr(0006-201, ['�Qu� es el Principio de la multiplicaci�n?'], ['Si tenemos a opciones para escoger un objeto, b opciones para elegir un segundo objeto, c opciones para escoger un tercero, etc., el n�mero total de formas de combinar los distintos objetos es el producto a � b � c � ...'], 20/20, ['PR por Miguelangel Regalado Alcal�, tomada de http://es.wikibooks.org/wiki/Matem�ticas_Bachillerato_LOGSE/Combinatoria el 4 de enero del 2015']).


pr(0006-202, ['�Qu� es una permutaci�n?'], ['Se llama permutaciones de m elementos (m = n) a las diferentes agrupaciones de esos m elementos de forma que: S� entran todos los elementos, s� importa el orden y no se repiten los elementos.'], 20/20, ['PR por Miguelangel Regalado Alcal�, tomada de http://www.vitutor.com/pro/1/a_4.html el 4 de enero del 2015']).


pr(0006-203, ['�Qu� es una permutaci�n circular? '], ['Se utilizan cuando los elementos se han de ordenar "en c�rculo", (por ejemplo, los comensales en una mesa), de modo que el primer elemento que "se sit�e" en la muestra determina el principio y el final de muestra.'], 20/20, ['PR por Miguelangel Regalado Alcal�, tomada de http://www.vitutor.com/pro/1/a_5.html el 4 de enero del 2015']).


pr(0006-204, ['�Qu� son permutaciones con repetici�n?'], ['Son permutaciones de m elementos donde el primer elemento se repite a veces , el segundo b veces , el tercero c veces, ...(m = a + b + c + ... = n) son los distintos grupos que pueden formarse con esos m elementos de forma que: S� entran todos los elementos, s� importa el orden y s� se repiten los elementos.'], 20/20, ['PR por Miguelangel Regalado Alcal�, tomada de http://www.vitutor.com/pro/1/a_6.html el 4 de enero del 2015']).


pr(0006-205, ['�Qu� son combinaciones?'], ['Se llama combinaciones de m elementos tomados de n en n (m = n) a todas las agrupaciones posibles que pueden hacerse con los m elementos de forma que: No entran todos los elementos., no importa el orden y no se repiten los elementos.'], 20/20, ['PR por Miguelangel Regalado Alcal�, tomada de http://www.vitutor.com/pro/1/a_7.html el 4 de enero del 2015']).



pr(0006-206, ['�Qu� son combinaciones con repetici�n?'], ['Son los distintos grupos formados por n elementos de manera que: No entran todos los elementos, no importa el orden y s� se repiten los elementos.'], 20/20, ['PR por Miguelangel Regalado Alcal�, tomada de http://www.vitutor.com/pro/1/a_8.html el 4 de enero del 2015']).


pr(0006-207, ['�Qu� son variaciones ordinarias?'], ['Son los distintos grupos formados por n elementos de forma que: No entran todos los elementos, s� importa el orden y no se repiten los elementos.'], 20/20, ['PR por Miguelangel Regalado Alcal�, tomada de http://www.vitutor.com/pro/1/a_2.html el 4 de enero del 2015']).



pr(0006-208, ['�Qu� son variaciones con repetici�n?'], ['Se llaman variaciones con repetici�n de m elementos tomados de n en n a los distintos grupos formados por n elementos de manera que: No entran todos los elementos si m > n. S� pueden entrar todos los elementos si m = n, s� importa el orden y s� se repiten los elementos.'], 20/20, ['PR por Miguelangel Regalado Alcal�, tomada de http://www.vitutor.com/pro/1/a_3.html el 4 de enero del 2015']).

% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
%PRs de Combinatoria: ejercicios, tomados de distintas p�ginas web
% Algunas PRs con campo extra, que indica alguna informaci�n
% extra sobre el problema; quedando dichas PRs estructuradas de la
% siguiente manera: pr(ID, ['Pregunta'], [Respuesta], Puntaje,
% ['Autor'], CampoExtra).
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------


pr(0006-84, ['Un equipo de baloncesto tiene que elegir un nuevo uniforme. Para ello debe escoger entre 4 camisetas y 5 pantalones con diferentes colores. �Cu�ntos uniformes distintos se pueden componer con las camisetas y pantalones disponibles?'], [20], 20/20, ['PR por Miguelangel Regalado Alcal�, tomada de http://es.wikibooks.org/wiki/Matem�ticas_Bachillerato_LOGSE/Combinatoria el 9 de enero del 2015'], ['Para resolver este problema hemos de tener en cuenta que cada una de las camisetas se podr� combinar con cada uno de los pantalones disponibles. Si tuvi�ramos una �nica camiseta, podr�amos componer 5 uniformes diferentes, resultado de combinar dicha camiseta con cada uno de los 5 pantalones. Si tuvi�ramos 2 camisetas, podr�amos componer 5 uniformes distintos para cada camiseta, resultado de combinar cada camiseta con cada uno de los 5 pantalones. Tendr�amos por tanto 2 � 5 = 10 combinaciones posibles. Siguiendo el mismo razonamiento, llegar�amos a la conclusi�n de que con 4 camisetas y 5 pantalones, podr�amos componer ... ']).

pr(0006-85, ['�Cu�ntos n�meros de tres cifras se pueden formar con los d�gitos 0, 1, 2, 3 y 4, sin que se repita ninguna cifra?'], [48], 20/20, ['PR por Miguelangel Regalado Alcal�, tomada de http://es.wikibooks.org/wiki/Matem�ticas_Bachillerato_LOGSE/Combinatoria el 9 de enero del 2015'] , ['Principio de la multiplicaci�n. Si tenemos a opciones para escoger un objeto, b opciones para elegir un segundo objeto, c opciones para escoger un tercero, etc., el n�mero total de formas de combinar los distintos objetos es el producto a � b � c � ...']).


pr(0006-86, ['En una carrera de nataci�n participan 8 nadadores. �De cu�ntas formas posibles pueden ocuparse los tres primeros puestos?'], [336], 20/20, ['PR por Miguelangel Regalado Alcal�, tomada de http://es.wikibooks.org/wiki/Matem�ticas_Bachillerato_LOGSE/Combinatoria el 9 de enero del 2015'] , ['Variaciones sin repetici�n o variaciones ordinarias de m elementos tomados de n en n (n menor igual que m), son los distintos grupos de n elementos no repetidos que se pueden formar, escogidos de entre los m elementos posibles, de forma que en cada grupo haya alg�n elemento distinto, o tenga los mismos elementos que otro grupo, pero colocados en distinto orden. Cada uno de los posibles grupos es una variaci�n. Se representa por V{m, n}.']).

pr(0006-87, [' En el bombo de un juego de loter�a, quedan 5 bolas. �De cu�ntas formas podr�n salir las cinco bolas?'], [120], 20/20, ['PR por Miguelangel Regalado Alcal�, tomada de http://es.wikibooks.org/wiki/Matem�ticas_Bachillerato_LOGSE/Combinatoria el 9 de enero del 2015'] , ['El n�mero de permutaciones de n elementos se representa por P(n), y su valor es: n!']).

pr(0006-88, ['�De cu�ntas formas pueden colocarse 7 ni�os formando un c�rculo?'], [720], 20/20, [['PR por Miguelangel Regalado Alcal�, tomada de http://es.wikibooks.org/wiki/Matem�ticas_Bachillerato_LOGSE/Combinatoria el 9 de enero del 2015'] , ['Hay que tener cuidado, ya que no se trata de ordenar simplemente a los 7 ni�os, pues hay que tener en cuenta que si desplazamos a todos los ni�os un lugar hacia la derecha, se obtiene una ordenaci�n id�ntica a la anterior. En este caso no nos interesa la posici�n exacta de los ni�os dentro del c�rculo, sino la posici�n relativa entre ellos (no existe un primer ni�o, ni un �ltimo). Cuando el �nico orden que interesa es el orden relativo entre los n elementos, se dejar� fijo a uno de los elementos y se permutar� el resto de elementos de todas las formas posibles.']]).

pr(0006-89, [' A un concursante en un programa de televisi�n, le dejan elegir 3 regalos entre los siguientes: lavadora, frigor�fico, lavavajillas, motocicleta, televisor y viaje. �Cu�ntas posibilidades de elecci�n tiene el concursante?'], [20], 20/20, ['PR por Miguelangel Regalado Alcal�, tomada de http://es.wikibooks.org/wiki/Matem�ticas_Bachillerato_LOGSE/Combinatoria el 9 de enero del 2015'] , ['Se podr�a pensar en un principio, que se trata de las variaciones de 6 elementos tomados de 3 en 3, pero hay que tener en cuenta que hay distintas variaciones que dan lugar a la misma elecci�n del concursante. Consid�rese el caso en que el concursante elige la motocicleta, el televisor y el viaje. Dentro del conjunto de todas las variaciones, dicha elecci�n estar�a repetida 3! = 6 veces, que son las distintas formas de ordenar dichos regalos.']).

pr(0006-90, ['�Cu�ntos n�meros de tres cifras se pueden formar con los d�gitos 1, 2, 3, 4 y 5?'], [125], 20/20, ['PR por Miguelangel Regalado Alcal�, tomada de http://www.vitutor.com/pro/1/a_2.html el 9 de enero del 2015']).


pr(0006-94, ['�De cu�ntas formas pueden mezclarse los siete colores del arco iris tom�ndolos de tres en tres?'], [35], 20/20, ['PR por Miguelangel Regalado Alcal�, tomada de http://www.vitutor.com/pro/1/a_a.html el 9 de enero del 2015']).


pr(0006-95, ['A una reuni�n asisten 10 personas y se intercambian saludos entre todos. �Cu�ntos saludos se han intercambiado?'], [405], 20/20, ['PR por Miguelangel Regalado Alcal�, tomada de http://www.vitutor.com/pro/1/a_a.html el 9 de enero del 2015']).


pr(0006-96, ['�De cu�ntas formas pueden colocarse los 11 jugadores de un equipo de f�tbol teniendo en cuenta que el portero no puede ocupar otra posici�n distinta de la porter�a?'], [3628800], 20/20, ['PR por Miguelangel Regalado Alcal�, tomada de http://www.vitutor.com/pro/1/a_a.html el 9 de enero del 2015']).

% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% PRs de Combinatoria: ejercicios ideados por Miguelangel Regalado
% Alcal�
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------

pr(0006-513, ['Suponga que Simon D�az, grand�simo cantante y poeta venezolano, tiene 48 discos de m�sica. �De cu�ntas maneras se pueden escuchar sus discos? Asumiendo que cada disco puede ser escuchado una, y s�lo una sola vez �Qu� herramienta utiliz� para resolver el problema?'], ['48!. Permutaciones'], 20/20, ['Miguelangel Regalado Alcal�']).

pr(0006-514, ['Suponga que usted tiene 3 discos de Ali Primera, gran m�sico y cantante venezolano. El primer disco consta de 6 canciones, el segundo de 8 y el tercero de 7. �De cu�ntas maneras se pueden escuchar las canciones? Asumiendo que, por cuestiones de tiempo quiz�s, usted s�lo puede escuchar una vez cada disco �Qu� herramienta utiliz� para resolver este problema?'], ['6!*8!*7!*3!. Permutaciones'], 20/20, ['Miguelangel Regalado Alcal�']).

pr(0006-515, ['En una reuni�n de la famosa mesa redonda se dice que asistieron 7 caballeros, m�s el Rey Arturo �De cu�ntas maneras podr�an sentarse alrededor de la mesa? �Qu� herramienta utiliz� para resolver este problema?'], ['(8-1)!. Permutaciones circulares'], 20/20, ['Miguelangel Regalado Alcal�']).

pr(0006-516, ['Para Las Ferias del Sol en M�rida un turista tiene que escoger como vestirse. Tiene 3 camisas, 2 pantalones y 4 pares de zapatos. �De cu�ntas maneras puede vestirse? �Qu� herramienta utiliz� para resolver el problema?'], ['3*2*4. Principio de la multiplicaci�n.'], 20/20, ['Miguelangel Regalado Alcal�']).

pr(0006-517, ['Se tienen 6 carrozas, las cuales ser�n usadas en el desfile de las Las Ferias de San Sebasti�n, en San Crist�bal. �De cu�ntas maneras pueden organizarse las carrozas en el desfile? �Qu� herramienta utiliz� para resolver el problema?'], ['6!. Permutaciones'], 20/20, ['Miguelangel Regalado Alcal�']).

pr(0006-518, ['El equipo de f�tbol Estudiantes de M�rida tiene que elegir un nuevo uniforme. Deben escoger entre 3 camisetas y 3 pantalones de diferentes colores. �Cu�ntos uniformes se pueden componer con las camisetas y pantalones disponibles? �Qu� herramienta utiliz� para resolver el problema?'], ['3*3. Principio de la multiplicaci�n'], 20/20, ['PR por Miguelangel Regalado Alcal�, basada en el ejemplo 1 de http://es.wikibooks.org/wiki/Matem�ticas_Bachillerato_LOGSE/Combinatoria el 9 de febrero de 2015']).


pr(0006-519, ['Suponga que 24 mujeres compiten en el Miss Venezuela por 3 puestos, los cuales las llevar�n a Miss Universo, Miss Mundo y Miss Latinoam�rica. �De cu�ntas maneras se pueden ocupar esos 3 puestos? �Qu� herramienta utiliz� para resolver este problema?'], ['24*23*22. Variaciones sin repetici�n'], 20/20, ['Miguelangel Regalado Alcal�']).

% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% PRs Miscel�neas: Algunas tomadas de p�ginas web, otras ideadas por
% Miguelangel Regalado Alcal�, bas�ndose en paradojas y teor�as
% previamente estudiadas.
% Algunas PRs con campo extra, que indica alguna informaci�n
% extra sobre el problema; quedando dichas PRs estructuradas de la
% siguiente manera: pr(ID, ['Pregunta'], [Respuesta], Puntaje,
% ['Autor'], CampoExtra).
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------

pr(0006-500, ['El hotel infinito de Hilbert: Suponga que usted es due�o de un hotel de infinitas habitaciones, el cual est� ocupado por infinitos hu�spedes. Un d�a, llega un cliente que desea hospedarse. �Qu� habitaci�n le correspondr�a al cliente?'], ['La habitaci�n n�mero 1. Pidiendole a los hu�spedes que se cambien a la habitaci�n +1 de actual, quedar�a libre la habitaci�n n�mero 1 para el nuevo cliente.'], 20/20, ['PR por Miguelangel Regalado Alcal� y planteamiento del matem�tico David Hilbert']).

pr(0006-501, ['El hotel infinito de Hilbert: Suponga que usted es due�o de un hotel de infinitas habitaciones, el cual est� ocupado por infinitos hu�spedes. Un d�a, llega una cantidad infinita de clientes, los cuales desean hospedarse. �De qu� manera los ubicar�a en su hotel?'], ['Una manera podr�a ser pidiendo a los hu�spedesque se hospeden en las habitaciones pares, porque hay infinitas habitaciones pares. Por lo tanto, quedr�an vac�as infinitas habitaciones impares para los nuevos clientes.'], 20/20, ['PR por Miguelangel Regalado Alcal�, planteamiento del matematico David Hilbert, y ejemplo tomado de http://es.wikipedia.org/wiki/El_hotel_infinito_de_Hilbert el 7 de febrero de 2015']).

pr(0006-502, ['En un lejano poblado de un antiguo emirato hab�a un barbero llamado As-Samet diestro en afeitar cabezas y barbas, maestro en escamondar pies y en poner sanguijuelas. Un d�a el emir se dio cuenta de la falta de barberos en el emirato, y orden� que los barberos s�lo afeitaran a aquellas personas que no pudieran hacerlo por s� mismas. Cierto d�a el emir llam� a As-Samet para que lo afeitara y �lle cont� sus angustias: En mi pueblo soy el �nico barbero. No puedo afeitar al barbero de mi pueblo, �que soy yo!, ya que si lo hago, entonces puedo afeitarme por m� mismo, por lo tanto �no deber�a afeitarme! Pero, si por el contrario no me afeito, entonces alg�n barbero deber�a afeitarme, �pero yo soy el �nico barbero de all�! El emir pens� que sus pensamientos eran tan profundos, que lo premi� con la mano de la m�s virtuosa de sus hijas. As�, el barbero As-Samet vivi� para siempre feliz y barb�n. �C�mo expresar�a usted el anterior planteamiento utilizando l�gica de primer orden?'], ['Para todo X, afeita(x, barbero) s� y s�lo s� not(afeita(x,x)).'] ; ['Cada persona es afeitada por el barbero si y s�lo si no se afeita a s� misma.'] , 20/20, ['PR por Miguelangel Regalado Alcal�, plantemiento de Bertrand Rusell, tomado de L�pez Mateos, Manuel (1978). Los Conjuntos. M�xico D.F.: Publicaciones del Departamento de Matem�ticas, Facultad de Ciencias, UNAM. Respuesta tomada de es.wikipedia.org/wiki/Paradoja_de_Russell  el 8 de febrero de 2015']).

pr(0006-503, ['Esta oraci�n es falsa. �Es verdadera la anterior oraci�n?'], ['Es imposible asignarle un valor de verdad sin contradecirse.'], 20/20, ['PR por Miguelangel Regalado Alcal�, basada en la paradoja del mentiroso']).

pr(0006-504, ['Un tranv�a corre fuera de control por una v�a. En su camino se hallan cinco personas atadas a la v�a por un fil�sofo malvado. Afortunadamente, es posible accionar un bot�n que encaminar� al tranv�a por una v�a diferente, por desgracia, hay otra persona atada a �sta. �Deber�a pulsarse el bot�n?'], ['�Depende?'], 20/20, ['PR por Miguelangel Regalado Alcal�, basada en un experimento ideado por Philippa Foot. Planteamiento tomado de http://es.wikipedia.org/wiki/Dilema_del_tranv�a el 8 de febrero de 2015']).

pr(0006-505, ['Un d�a Berem�s, en su camello, se encuentra con tres hermanos, los cuales hab�an hereado 35 camellos, y deb�an dividirlos de la siguiente forma: al mayor le correspond�a la mitad, al segundo la tercera parte y al menor la novena parte. �C�mo har�a usted dicha divisi�n, de manera que el n�mero de camellos para cada hermano sea un n�mero entero?'], ['Agregando el camello de Berem�s a la cuenta, habr�a entonces 36 camellos, por lo cual la divisi�n ser�a exacta, y la repartici�n justa.'], 20/20, ['PR por Miguelangel Regalado Alcal�, extracto tomado del Hombre que Calculaba de Malba Tahan']).

pr(0006-506, ['A 3 �rabes les hab�an dado de pago 7 jarrones llenos de vino, 7 jarrones a la mitad de vino y 7 vac�os y ten�an que repartirlos de tal forma que les tocara la misma cantidad de vino y de jarrones.'], ['El primero recive 3 jarrones llenos, 1 medio lleno y 3 vac�os; al segundo le tocan 2 jarrones llenos, 3 medio llenos y 2 vac�os; y al tercero 2 llenos, 3 medio llenos y 2 vac�os.'], 20/20, ['PR por Miguelangel Regalado Alcal�, extracto tomado del Hombre que Calculaba de Malba Tahan']).

pr(0006-507, ['Dos personas de la misma edad deciden hacer un experimento, para determinar qui�n, bajo ciertas condiciones, envejece m�s r�pido. Una viajar� al espacio, mientras la otra permanecer� en la Tierra. �Cu�l cree usted que envejezca m�s r�pido y por qu�?'], ['Depende'], 20/20, ['PR Miguelangel Regalado Alcal�, basada en la paradoja de los gemelos de Paul Langevin']).

pr(0006-508, ['�Verdadero o falso? En la sucesi�n de Fibonacci uno de cada tres n�meros es par.'], ['Verdadero'], 20/20, ['PR por Miguelangel Regalado Alcal�, tomada de http://dematesna.es/index.php?option=com_content&view=article&id=544:-curiosidades-de-la-sucesion-de-fibonnaci&catid=87:isabias-que-del-curso-2010-2011&Itemid=60 el 8 de febrero de 2015']).

pr(0006-509, ['�Verdadero o falso? En la sucesi�n de Fibonacci uno de cada cinco es m�ltiplo de 5'], ['Verdadero'], 20/20, ['PR por Miguelangel Regalado Alcal�, tomada de http://dematesna.es/index.php?option=com_content&view=article&id=544:-curiosidades-de-la-sucesion-de-fibonnaci&catid=87:isabias-que-del-curso-2010-2011&Itemid=60 el 8 de febrero de 2015']).

pr(0006-510, ['Dado el mapa de K�nigsberg, con el r�o Pregolya dividiendo el plano en cuatro regiones distintas, que est�n unidas a trav�s de los siete puentes, �es posible dar un paseo comenzando desde cualquiera de estas regiones, pasando por todos los puentes, recorriendo s�lo una vez cada uno, y regresando al mismo punto de partida?. Ver mapa en http://upload.wikimedia.org/wikipedia/commons/5/5d/Konigsberg_bridges.png'], ['No'], 20/20, ['PR por Miguelangel Regalado Alcal�, tomada de http://es.wikipedia.org/wiki/Problema_de_los_puentes_de_K�nigsberg'], ['EXTRA: El planteamiento anterior dio origen a la famosa teor�a de grafos']).

pr(0006-511, ['�Verdadero o falso? El actual Rey de Venezuela utiliza corona'], ['Falso. En Venezuela no hay Rey'], 20/20, ['PR por Miguelangel Regalado Alcal�, basada en la teor�a de descripciones de Bertand Rusell.']).

pr(0006-512, ['�En qu� momento un mont�n de arena deja de serlo cuando se van quitando granos?'], ['Depende'], 20/20, ['PR por Miguelangel Regalado Alcal�, basada en la paradoja sorites'] , ['EXTRA: Habr�a que preguntarse: �Cu�ntos granos de arena son un mont�n?, y a partir de la anterior pregunta hacer inducciones matem�ticas.']).
