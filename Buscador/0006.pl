%Miguelangel Regalado Alcalá
%C.I: 19.894.206
%Matemáticas Discretas
%PRs
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
%PRs del archivo 0006.pl de http://nux.ula.ve/mathematica/0006.pl,
% tomadas el 17 de febrero del 2015
% Comentarios agregados, por Miguelangel Regalado Alcalá, a comentarios
% anteriores del profesor Jacinto Dávila. Fecha: 17/02/2015
% Corregidos algunos acentos y signos de puntuación. Símbolos
% misteriosos cambiados por correspondiente acento. Fecha: 17/02/2015
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------

pr(0006-1, [ 'Leyes de De Morgan:', not(p ; q),=], [not(p) , not(q)], 20/20, ['Miguelangel Regalado Alcalá']).
pr(0006-2, [ 'Leyes de De Morgan:',not(p) , not(q),=], [not(p ; q)], 20/20, ['Miguelangel Regalado Alcalá']).
pr(0006-3, [ 'Leyes de De Morgan:', not(p , q),=], [not(p) ; not(q)], 20/20, ['Miguelangel Regalado Alcalá']).
pr(0006-4, [ 'Leyes de De Morgan:', not(p) ; not(q),=], [not(p , q)], 20/20, ['Miguelangel Regalado Alcalá']).
%
pr(0000-4, [A],[B], 100/100, ['jacinto  en ula.ve']) :- si(A,B).
pr(0000-5, [no, B], [no, A], 100/100, ['jacinto en ula.ve']) :- si(A,B).
%
pr(0006-7,[ ' Si a implica b y b implica a , y además b implica c , ¿necesariamente a implica c? si/no '], [si], 20/20, ['Miguelangel Regalado Alcalá']).
pr(0006-8,[ ' Si a implica b , b implica c , c implica d y d implica e , Pregunta: Si se da a ¿necesariamente se dará e? si/no '], [si], 20/20, ['Miguelangel Regalado Alcalá']).
pr(0006-9, [ ' Proposiciones: Si estudio paso el examen de Cálculo, Si paso el examen de Cálculo paso la materia, Si juego el partido de fútbol mi equipo va a ganar el partido y no voy a estudiar, Si mi equipo gana el partido será e1 campeón del torneo ,  Pregunta: No jugué el partido de fútbol ¿Salió campeón mi equipo? si/no/no se sabe '], ['no se sabe'], 20/20 , ['Miguelangel Regalado Alcalá']).

pr(0006-10,[ ' Si a implica b y b implica a , y además b implica c , ¿necesariamente a implica c? si/no '], [no], 20/20, ['Miguelangel Regalado Alcalá']).

pr(0006-12,[ ' Si a implica b , b implica c , c implica d y d implica e , Pregunta: Si se da a ¿necesariamente se dará e? si/no '], [si], 20/20, ['Miguelangel Regalado Alcalá']).

pr(0006-14, [ ' Proposición: Si 1 + 1 = 2 entonces 2 + 2 = 3,  Pregunta: Se cumple que 1 + 1 = 2 , ¿entonces 2 + 2 = 3? si/no '], [si], 20/20, ['Miguelangel Regalado Alcalá']).

% comenta 0000:
% estudio -> paso
% paso -> materia
% juego -> equipo_gana y no estudio
% equipo_gana -> campeon
% no juego
% ? campeon
% NO SE SABE. SE SABE que si juego el partido, mi equipo ganará, y por
% lo tanto, será campeón; pero, NO SE SABE, con certeza, que pasará si
% no juego el partido.
pr(0006-15, [ ' Proposiciones: Si estudio paso el examen de Cálculo, Si paso el examen de Cálculo paso la materia, Si juego el partido de fútbol mi equipo va a ganar el partido y no voy a estudiar, Si mi equipo gana el partido será e1 campeón del torneo ,  Pregunta: No jugué el partido de fútbol ¿Salió campeón mi equipo? si/no/no se sabe '], ['no se sabe'], 20/20 , ['Miguelangel Regalado Alcalá']).

% comenta 0000: corregida:
% estudio -> paso
% paso -> materia
% juego -> equipo_gana y no estudio
% equipo_gana -> campeon
% juego
% ? materia
% NO SE SABE. Si no estudio, puede que también haya pasado el examen de
% Cálculo, y por lo tanto, la materia. LO QUE SI SE SABE es que jugué el
% partido de fútbol, por lo cual es SEGURO que mi equipo ganó y quedó
% campeón.
pr(0006-16, [ ' Proposiciones: Si estudio paso el examen de Cálculo, Si paso el examen de Cálculo paso la materia, Si juego el partido de fútbol mi equipo va a ganar el partido y no voy a estudiar, Si mi equipo gana el partido será campeón del torneo,  Pregunta: Si jugué el partido de fútbol ¿Pasé la materia Cálculo? si/no/no se sabe '], ['no se sabe'], 20/20, ['Miguelangel Regalado Alcalá']).

% Comenta 000: corregida
% loteria -> dinero
% dinero -> (loteria y carro)
% carro <-> viaje
% viaje
% ? loteria
% NO SE SABE. Porque también puede ser, que me haya comprado un carro
% con dinero adquirido de alguna manera distinta a la lotería. Es decir,
% ganar la lotería no es la única manera de obtener dinero para
% comprarse un carro. Lo que SI ES SEGURO, es que me compré un carro,
% porque viajé
pr(0006-17, [ ' Proposiciones: Si me gano la lotería tendré dinero. Si tengo dinero quiere decir que me gané la lotería, y entonces me voy a comprar un carro. Si y sólo si me compro un carro, viajaré ,  Pregunta: Yo viajé ¿Me gané la lotería? si/no/no se sabe '], ['no se sabe'], 20/20, ['Miguelangel Regalado Alcalá']).

% Comenta 0000:
% loteria -> dinero
% dinero -> (loteria y carro)
% carro <-> viaje
% no loteria
% ? carro
% NO SE SABE. ES SEGURO que no me compraré un carro con el DINERO de la
% lotería, pues no gane la misma. Sin embargo, podría comprarme un carro
% adquiriendo el dinero de otra fuente.
pr(0006-18, [ ' Proposiciones: Si me gano la lotería tendré dinero. Si tengo dinero quiere decir que me gané la lotería, y entonces me voy a comprar un carro. Si y sólo si me compro un carro, viajaré ,  Pregunta: No me gané la lotería ¿Me compraré un carro? si/no/no se sabe '], ['no se sabe'], 20/20, ['Miguelangel Regalado Alcalá']).

pr(0006-113, [ '¿Existe conmutatividad en las conjunciones? Es decir , ¿Es q , p = p , q? si/no'], ['si'], 20/20, ['Miguelangel Regalado Alcalá']).

pr(0006-114, [ '¿Existe conmutatividad en las disyunciones? Es decir , ¿Es q ; p = p ; q? si/no'], ['si'], 20/20, ['Miguelangel Regalado Alcalá']).

pr(0006-115, ['Idempotencia:',p , p,=], [p], 20/20, ['Miguelangel Regalado Alcalá']).

pr(0006-116, ['Idempotencia:',p ; p,=], [p], 20/20, ['Miguelangel Regalado Alcalá']).

pr(0006-117, ['true/false',p , not(p),=], [false], 20/20, ['Miguelangel Regalado Alcalá']).

pr(0006-118, ['true/false',p ; not(p),=], [true], 20/20, ['Miguelangel Regalado Alcalá']).

pr(0006-119, [ 'Leyes de Absorción:', p ; (p ; q),=], [p], 20/20, ['Miguelangel Regalado Alcalá']).

pr(0006-120, [ 'Leyes de Absorción:', p , (p ; q),=], [p], 20/20, ['Miguelangel Regalado Alcalá']).

pr(0006-70,[(A ; A) , = ], [A], 20/20, ['Miguelangel Regalado Alcalá']).

pr(0006-71,[(A ; not(A)) , = ], [true], 20/20, ['Miguelangel Regalado Alcalá']).

pr(0006-72,[(A , not(A)) , = ], [fail], 20/20, ['Miguelangel Regalado Alcalá']).

pr(0006-73,[(A ; not(A)) , = ], [fail], 0/20, ['Miguelangel Regalado Alcalá']).

pr(0006-74,[(A , not(A)) , = ], [true], 0/20, ['Miguelangel Regalado Alcalá']).

pr(0006-75,[ not( not(not(A , B) , A) , not(not(A , B) , B )) , = ], [A,xor,B], 20/20, ['Miguelangel Regalado Alcalá']).

pr(0006-76,[not(not(A)) , = ], [A], 20/20, ['Miguelangel Regalado Alcalá']).

pr(0006-77,[not(not(A)) , = ], [not(A)], 0/20, ['Miguelangel Regalado Alcalá']).

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
%PRs de Combinatoria, tomadas de distintas páginas web
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------

pr(0006-200, ['¿Qué es combinatoria?'], ['La combinatoria estudia las diferentes formas en que se pueden agrupar u ordenar los elementos de un conjunto.'], 20/20, ['PR por Miguelangel Regalado Alcalá, tomada de http://es.wikibooks.org/wiki/Matemáticas_Bachillerato_LOGSE/Combinatoria el 4 de enero del 2015']).

pr(0006-201, ['¿Qué es el Principio de la multiplicación?'], ['Si tenemos a opciones para escoger un objeto, b opciones para elegir un segundo objeto, c opciones para escoger un tercero, etc., el número total de formas de combinar los distintos objetos es el producto a · b · c · ...'], 20/20, ['PR por Miguelangel Regalado Alcalá, tomada de http://es.wikibooks.org/wiki/Matemáticas_Bachillerato_LOGSE/Combinatoria el 4 de enero del 2015']).


pr(0006-202, ['¿Qué es una permutación?'], ['Se llama permutaciones de m elementos (m = n) a las diferentes agrupaciones de esos m elementos de forma que: Sí entran todos los elementos, sí importa el orden y no se repiten los elementos.'], 20/20, ['PR por Miguelangel Regalado Alcalá, tomada de http://www.vitutor.com/pro/1/a_4.html el 4 de enero del 2015']).


pr(0006-203, ['¿Qué es una permutación circular? '], ['Se utilizan cuando los elementos se han de ordenar "en círculo", (por ejemplo, los comensales en una mesa), de modo que el primer elemento que "se sitúe" en la muestra determina el principio y el final de muestra.'], 20/20, ['PR por Miguelangel Regalado Alcalá, tomada de http://www.vitutor.com/pro/1/a_5.html el 4 de enero del 2015']).


pr(0006-204, ['¿Qué son permutaciones con repetición?'], ['Son permutaciones de m elementos donde el primer elemento se repite a veces , el segundo b veces , el tercero c veces, ...(m = a + b + c + ... = n) son los distintos grupos que pueden formarse con esos m elementos de forma que: Sí entran todos los elementos, sí importa el orden y sí se repiten los elementos.'], 20/20, ['PR por Miguelangel Regalado Alcalá, tomada de http://www.vitutor.com/pro/1/a_6.html el 4 de enero del 2015']).


pr(0006-205, ['¿Qué son combinaciones?'], ['Se llama combinaciones de m elementos tomados de n en n (m = n) a todas las agrupaciones posibles que pueden hacerse con los m elementos de forma que: No entran todos los elementos., no importa el orden y no se repiten los elementos.'], 20/20, ['PR por Miguelangel Regalado Alcalá, tomada de http://www.vitutor.com/pro/1/a_7.html el 4 de enero del 2015']).



pr(0006-206, ['¿Qué son combinaciones con repetición?'], ['Son los distintos grupos formados por n elementos de manera que: No entran todos los elementos, no importa el orden y sí se repiten los elementos.'], 20/20, ['PR por Miguelangel Regalado Alcalá, tomada de http://www.vitutor.com/pro/1/a_8.html el 4 de enero del 2015']).


pr(0006-207, ['¿Qué son variaciones ordinarias?'], ['Son los distintos grupos formados por n elementos de forma que: No entran todos los elementos, sí importa el orden y no se repiten los elementos.'], 20/20, ['PR por Miguelangel Regalado Alcalá, tomada de http://www.vitutor.com/pro/1/a_2.html el 4 de enero del 2015']).



pr(0006-208, ['¿Qué son variaciones con repetición?'], ['Se llaman variaciones con repetición de m elementos tomados de n en n a los distintos grupos formados por n elementos de manera que: No entran todos los elementos si m > n. Sí pueden entrar todos los elementos si m = n, sí importa el orden y sí se repiten los elementos.'], 20/20, ['PR por Miguelangel Regalado Alcalá, tomada de http://www.vitutor.com/pro/1/a_3.html el 4 de enero del 2015']).

% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
%PRs de Combinatoria: ejercicios, tomados de distintas páginas web
% Algunas PRs con campo extra, que indica alguna información
% extra sobre el problema; quedando dichas PRs estructuradas de la
% siguiente manera: pr(ID, ['Pregunta'], [Respuesta], Puntaje,
% ['Autor'], CampoExtra).
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------


pr(0006-84, ['Un equipo de baloncesto tiene que elegir un nuevo uniforme. Para ello debe escoger entre 4 camisetas y 5 pantalones con diferentes colores. ¿Cuántos uniformes distintos se pueden componer con las camisetas y pantalones disponibles?'], [20], 20/20, ['PR por Miguelangel Regalado Alcalá, tomada de http://es.wikibooks.org/wiki/Matemáticas_Bachillerato_LOGSE/Combinatoria el 9 de enero del 2015'], ['Para resolver este problema hemos de tener en cuenta que cada una de las camisetas se podrá combinar con cada uno de los pantalones disponibles. Si tuviéramos una única camiseta, podríamos componer 5 uniformes diferentes, resultado de combinar dicha camiseta con cada uno de los 5 pantalones. Si tuviéramos 2 camisetas, podríamos componer 5 uniformes distintos para cada camiseta, resultado de combinar cada camiseta con cada uno de los 5 pantalones. Tendríamos por tanto 2 · 5 = 10 combinaciones posibles. Siguiendo el mismo razonamiento, llegaríamos a la conclusión de que con 4 camisetas y 5 pantalones, podríamos componer ... ']).

pr(0006-85, ['¿Cuántos números de tres cifras se pueden formar con los dígitos 0, 1, 2, 3 y 4, sin que se repita ninguna cifra?'], [48], 20/20, ['PR por Miguelangel Regalado Alcalá, tomada de http://es.wikibooks.org/wiki/Matemáticas_Bachillerato_LOGSE/Combinatoria el 9 de enero del 2015'] , ['Principio de la multiplicación. Si tenemos a opciones para escoger un objeto, b opciones para elegir un segundo objeto, c opciones para escoger un tercero, etc., el número total de formas de combinar los distintos objetos es el producto a · b · c · ...']).


pr(0006-86, ['En una carrera de natación participan 8 nadadores. ¿De cuántas formas posibles pueden ocuparse los tres primeros puestos?'], [336], 20/20, ['PR por Miguelangel Regalado Alcalá, tomada de http://es.wikibooks.org/wiki/Matemáticas_Bachillerato_LOGSE/Combinatoria el 9 de enero del 2015'] , ['Variaciones sin repetición o variaciones ordinarias de m elementos tomados de n en n (n menor igual que m), son los distintos grupos de n elementos no repetidos que se pueden formar, escogidos de entre los m elementos posibles, de forma que en cada grupo haya algún elemento distinto, o tenga los mismos elementos que otro grupo, pero colocados en distinto orden. Cada uno de los posibles grupos es una variación. Se representa por V{m, n}.']).

pr(0006-87, [' En el bombo de un juego de lotería, quedan 5 bolas. ¿De cuántas formas podrán salir las cinco bolas?'], [120], 20/20, ['PR por Miguelangel Regalado Alcalá, tomada de http://es.wikibooks.org/wiki/Matemáticas_Bachillerato_LOGSE/Combinatoria el 9 de enero del 2015'] , ['El número de permutaciones de n elementos se representa por P(n), y su valor es: n!']).

pr(0006-88, ['¿De cuántas formas pueden colocarse 7 niños formando un círculo?'], [720], 20/20, [['PR por Miguelangel Regalado Alcalá, tomada de http://es.wikibooks.org/wiki/Matemáticas_Bachillerato_LOGSE/Combinatoria el 9 de enero del 2015'] , ['Hay que tener cuidado, ya que no se trata de ordenar simplemente a los 7 niños, pues hay que tener en cuenta que si desplazamos a todos los niños un lugar hacia la derecha, se obtiene una ordenación idéntica a la anterior. En este caso no nos interesa la posición exacta de los niños dentro del círculo, sino la posición relativa entre ellos (no existe un primer niño, ni un último). Cuando el único orden que interesa es el orden relativo entre los n elementos, se dejará fijo a uno de los elementos y se permutará el resto de elementos de todas las formas posibles.']]).

pr(0006-89, [' A un concursante en un programa de televisión, le dejan elegir 3 regalos entre los siguientes: lavadora, frigorífico, lavavajillas, motocicleta, televisor y viaje. ¿Cuántas posibilidades de elección tiene el concursante?'], [20], 20/20, ['PR por Miguelangel Regalado Alcalá, tomada de http://es.wikibooks.org/wiki/Matemáticas_Bachillerato_LOGSE/Combinatoria el 9 de enero del 2015'] , ['Se podría pensar en un principio, que se trata de las variaciones de 6 elementos tomados de 3 en 3, pero hay que tener en cuenta que hay distintas variaciones que dan lugar a la misma elección del concursante. Considérese el caso en que el concursante elige la motocicleta, el televisor y el viaje. Dentro del conjunto de todas las variaciones, dicha elección estaría repetida 3! = 6 veces, que son las distintas formas de ordenar dichos regalos.']).

pr(0006-90, ['¿Cuántos números de tres cifras se pueden formar con los dígitos 1, 2, 3, 4 y 5?'], [125], 20/20, ['PR por Miguelangel Regalado Alcalá, tomada de http://www.vitutor.com/pro/1/a_2.html el 9 de enero del 2015']).


pr(0006-94, ['¿De cuántas formas pueden mezclarse los siete colores del arco iris tomándolos de tres en tres?'], [35], 20/20, ['PR por Miguelangel Regalado Alcalá, tomada de http://www.vitutor.com/pro/1/a_a.html el 9 de enero del 2015']).


pr(0006-95, ['A una reunión asisten 10 personas y se intercambian saludos entre todos. ¿Cuántos saludos se han intercambiado?'], [405], 20/20, ['PR por Miguelangel Regalado Alcalá, tomada de http://www.vitutor.com/pro/1/a_a.html el 9 de enero del 2015']).


pr(0006-96, ['¿De cuántas formas pueden colocarse los 11 jugadores de un equipo de fútbol teniendo en cuenta que el portero no puede ocupar otra posición distinta de la portería?'], [3628800], 20/20, ['PR por Miguelangel Regalado Alcalá, tomada de http://www.vitutor.com/pro/1/a_a.html el 9 de enero del 2015']).

% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% PRs de Combinatoria: ejercicios ideados por Miguelangel Regalado
% Alcalá
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------

pr(0006-513, ['Suponga que Simon Díaz, grandísimo cantante y poeta venezolano, tiene 48 discos de música. ¿De cuántas maneras se pueden escuchar sus discos? Asumiendo que cada disco puede ser escuchado una, y sólo una sola vez ¿Qué herramienta utilizó para resolver el problema?'], ['48!. Permutaciones'], 20/20, ['Miguelangel Regalado Alcalá']).

pr(0006-514, ['Suponga que usted tiene 3 discos de Ali Primera, gran músico y cantante venezolano. El primer disco consta de 6 canciones, el segundo de 8 y el tercero de 7. ¿De cuántas maneras se pueden escuchar las canciones? Asumiendo que, por cuestiones de tiempo quizás, usted sólo puede escuchar una vez cada disco ¿Qué herramienta utilizó para resolver este problema?'], ['6!*8!*7!*3!. Permutaciones'], 20/20, ['Miguelangel Regalado Alcalá']).

pr(0006-515, ['En una reunión de la famosa mesa redonda se dice que asistieron 7 caballeros, más el Rey Arturo ¿De cuántas maneras podrían sentarse alrededor de la mesa? ¿Qué herramienta utilizó para resolver este problema?'], ['(8-1)!. Permutaciones circulares'], 20/20, ['Miguelangel Regalado Alcalá']).

pr(0006-516, ['Para Las Ferias del Sol en Mérida un turista tiene que escoger como vestirse. Tiene 3 camisas, 2 pantalones y 4 pares de zapatos. ¿De cuántas maneras puede vestirse? ¿Qué herramienta utilizó para resolver el problema?'], ['3*2*4. Principio de la multiplicación.'], 20/20, ['Miguelangel Regalado Alcalá']).

pr(0006-517, ['Se tienen 6 carrozas, las cuales serán usadas en el desfile de las Las Ferias de San Sebastián, en San Cristóbal. ¿De cuántas maneras pueden organizarse las carrozas en el desfile? ¿Qué herramienta utilizó para resolver el problema?'], ['6!. Permutaciones'], 20/20, ['Miguelangel Regalado Alcalá']).

pr(0006-518, ['El equipo de fútbol Estudiantes de Mérida tiene que elegir un nuevo uniforme. Deben escoger entre 3 camisetas y 3 pantalones de diferentes colores. ¿Cuántos uniformes se pueden componer con las camisetas y pantalones disponibles? ¿Qué herramienta utilizó para resolver el problema?'], ['3*3. Principio de la multiplicación'], 20/20, ['PR por Miguelangel Regalado Alcalá, basada en el ejemplo 1 de http://es.wikibooks.org/wiki/Matemáticas_Bachillerato_LOGSE/Combinatoria el 9 de febrero de 2015']).


pr(0006-519, ['Suponga que 24 mujeres compiten en el Miss Venezuela por 3 puestos, los cuales las llevarán a Miss Universo, Miss Mundo y Miss Latinoamérica. ¿De cuántas maneras se pueden ocupar esos 3 puestos? ¿Qué herramienta utilizó para resolver este problema?'], ['24*23*22. Variaciones sin repetición'], 20/20, ['Miguelangel Regalado Alcalá']).

% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% PRs Misceláneas: Algunas tomadas de páginas web, otras ideadas por
% Miguelangel Regalado Alcalá, basándose en paradojas y teorías
% previamente estudiadas.
% Algunas PRs con campo extra, que indica alguna información
% extra sobre el problema; quedando dichas PRs estructuradas de la
% siguiente manera: pr(ID, ['Pregunta'], [Respuesta], Puntaje,
% ['Autor'], CampoExtra).
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------
% -----------------------------------------------------------------------

pr(0006-500, ['El hotel infinito de Hilbert: Suponga que usted es dueño de un hotel de infinitas habitaciones, el cual está ocupado por infinitos huéspedes. Un día, llega un cliente que desea hospedarse. ¿Qué habitación le correspondría al cliente?'], ['La habitación número 1. Pidiendole a los huéspedes que se cambien a la habitación +1 de actual, quedaría libre la habitación número 1 para el nuevo cliente.'], 20/20, ['PR por Miguelangel Regalado Alcalá y planteamiento del matemático David Hilbert']).

pr(0006-501, ['El hotel infinito de Hilbert: Suponga que usted es dueño de un hotel de infinitas habitaciones, el cual está ocupado por infinitos huéspedes. Un día, llega una cantidad infinita de clientes, los cuales desean hospedarse. ¿De qué manera los ubicaría en su hotel?'], ['Una manera podría ser pidiendo a los huéspedesque se hospeden en las habitaciones pares, porque hay infinitas habitaciones pares. Por lo tanto, quedrían vacías infinitas habitaciones impares para los nuevos clientes.'], 20/20, ['PR por Miguelangel Regalado Alcalá, planteamiento del matematico David Hilbert, y ejemplo tomado de http://es.wikipedia.org/wiki/El_hotel_infinito_de_Hilbert el 7 de febrero de 2015']).

pr(0006-502, ['En un lejano poblado de un antiguo emirato había un barbero llamado As-Samet diestro en afeitar cabezas y barbas, maestro en escamondar pies y en poner sanguijuelas. Un día el emir se dio cuenta de la falta de barberos en el emirato, y ordenó que los barberos sólo afeitaran a aquellas personas que no pudieran hacerlo por sí mismas. Cierto día el emir llamó a As-Samet para que lo afeitara y élle contó sus angustias: En mi pueblo soy el único barbero. No puedo afeitar al barbero de mi pueblo, ¡que soy yo!, ya que si lo hago, entonces puedo afeitarme por mí mismo, por lo tanto ¡no debería afeitarme! Pero, si por el contrario no me afeito, entonces algún barbero debería afeitarme, ¡pero yo soy el único barbero de allí! El emir pensó que sus pensamientos eran tan profundos, que lo premió con la mano de la más virtuosa de sus hijas. Así, el barbero As-Samet vivió para siempre feliz y barbón. ¿Cómo expresaría usted el anterior planteamiento utilizando lógica de primer orden?'], ['Para todo X, afeita(x, barbero) sí y sólo sí not(afeita(x,x)).'] ; ['Cada persona es afeitada por el barbero si y sólo si no se afeita a sí misma.'] , 20/20, ['PR por Miguelangel Regalado Alcalá, plantemiento de Bertrand Rusell, tomado de López Mateos, Manuel (1978). Los Conjuntos. México D.F.: Publicaciones del Departamento de Matemáticas, Facultad de Ciencias, UNAM. Respuesta tomada de es.wikipedia.org/wiki/Paradoja_de_Russell  el 8 de febrero de 2015']).

pr(0006-503, ['Esta oración es falsa. ¿Es verdadera la anterior oración?'], ['Es imposible asignarle un valor de verdad sin contradecirse.'], 20/20, ['PR por Miguelangel Regalado Alcalá, basada en la paradoja del mentiroso']).

pr(0006-504, ['Un tranvía corre fuera de control por una vía. En su camino se hallan cinco personas atadas a la vía por un filósofo malvado. Afortunadamente, es posible accionar un botón que encaminará al tranvía por una vía diferente, por desgracia, hay otra persona atada a ésta. ¿Debería pulsarse el botón?'], ['¿Depende?'], 20/20, ['PR por Miguelangel Regalado Alcalá, basada en un experimento ideado por Philippa Foot. Planteamiento tomado de http://es.wikipedia.org/wiki/Dilema_del_tranvía el 8 de febrero de 2015']).

pr(0006-505, ['Un día Beremís, en su camello, se encuentra con tres hermanos, los cuales habían hereado 35 camellos, y debían dividirlos de la siguiente forma: al mayor le correspondía la mitad, al segundo la tercera parte y al menor la novena parte. ¿Cómo haría usted dicha división, de manera que el número de camellos para cada hermano sea un número entero?'], ['Agregando el camello de Beremís a la cuenta, habría entonces 36 camellos, por lo cual la división sería exacta, y la repartición justa.'], 20/20, ['PR por Miguelangel Regalado Alcalá, extracto tomado del Hombre que Calculaba de Malba Tahan']).

pr(0006-506, ['A 3 Árabes les habían dado de pago 7 jarrones llenos de vino, 7 jarrones a la mitad de vino y 7 vacíos y tenían que repartirlos de tal forma que les tocara la misma cantidad de vino y de jarrones.'], ['El primero recive 3 jarrones llenos, 1 medio lleno y 3 vacíos; al segundo le tocan 2 jarrones llenos, 3 medio llenos y 2 vacíos; y al tercero 2 llenos, 3 medio llenos y 2 vacíos.'], 20/20, ['PR por Miguelangel Regalado Alcalá, extracto tomado del Hombre que Calculaba de Malba Tahan']).

pr(0006-507, ['Dos personas de la misma edad deciden hacer un experimento, para determinar quién, bajo ciertas condiciones, envejece más rápido. Una viajará al espacio, mientras la otra permanecerá en la Tierra. ¿Cuál cree usted que envejezca más rápido y por qué?'], ['Depende'], 20/20, ['PR Miguelangel Regalado Alcalá, basada en la paradoja de los gemelos de Paul Langevin']).

pr(0006-508, ['¿Verdadero o falso? En la sucesión de Fibonacci uno de cada tres números es par.'], ['Verdadero'], 20/20, ['PR por Miguelangel Regalado Alcalá, tomada de http://dematesna.es/index.php?option=com_content&view=article&id=544:-curiosidades-de-la-sucesion-de-fibonnaci&catid=87:isabias-que-del-curso-2010-2011&Itemid=60 el 8 de febrero de 2015']).

pr(0006-509, ['¿Verdadero o falso? En la sucesión de Fibonacci uno de cada cinco es múltiplo de 5'], ['Verdadero'], 20/20, ['PR por Miguelangel Regalado Alcalá, tomada de http://dematesna.es/index.php?option=com_content&view=article&id=544:-curiosidades-de-la-sucesion-de-fibonnaci&catid=87:isabias-que-del-curso-2010-2011&Itemid=60 el 8 de febrero de 2015']).

pr(0006-510, ['Dado el mapa de Königsberg, con el río Pregolya dividiendo el plano en cuatro regiones distintas, que están unidas a través de los siete puentes, ¿es posible dar un paseo comenzando desde cualquiera de estas regiones, pasando por todos los puentes, recorriendo sólo una vez cada uno, y regresando al mismo punto de partida?. Ver mapa en http://upload.wikimedia.org/wikipedia/commons/5/5d/Konigsberg_bridges.png'], ['No'], 20/20, ['PR por Miguelangel Regalado Alcalá, tomada de http://es.wikipedia.org/wiki/Problema_de_los_puentes_de_Königsberg'], ['EXTRA: El planteamiento anterior dio origen a la famosa teoría de grafos']).

pr(0006-511, ['¿Verdadero o falso? El actual Rey de Venezuela utiliza corona'], ['Falso. En Venezuela no hay Rey'], 20/20, ['PR por Miguelangel Regalado Alcalá, basada en la teoría de descripciones de Bertand Rusell.']).

pr(0006-512, ['¿En qué momento un montón de arena deja de serlo cuando se van quitando granos?'], ['Depende'], 20/20, ['PR por Miguelangel Regalado Alcalá, basada en la paradoja sorites'] , ['EXTRA: Habría que preguntarse: ¿Cuántos granos de arena son un montón?, y a partir de la anterior pregunta hacer inducciones matemáticas.']).
