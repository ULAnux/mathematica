Buscador Version 1.0 5/9/2016 Autor: Andr�s Trejo

�Qu� es?
--------

"Buscador" es un c�digo que funciona con archivos .pl (c�digo hecho en el
lenguaje de programaci�n SWI-Prolog). Es llamado buscador ya que su funci�n es
la de buscar entre varios archivos ".pl" una pregunta contenida un una "pr"
(Estructura de datos tipo Pregunta-Respuesta) que sea igual o similar a la
pregunta insertada por el usuario.

Descripci�n
-----------

Dicho c�digo hace uso de funciones de procesamiento de archivos con las cuales
las pr contenidas en los .pl son tokenizadas una por una, por un m�todo que
hace uso de expresiones regulares, de manera que la informaci�n que contienen
quede archivada en un array con la siguiente estructura: [Pregunta],
[Respuesta], [Informaci�n adicional], [], ... ,[]. En pocas palabras tokeniza
toda la informaci�n contenida entre corchetes. Por ahora s�lo es utilizada una
string de la pregunta que ser� luego comparada con la pregunta ingresada.

En cuanto a la parte de la comparaci�n, se realiz� una investigaci�n para dar
con la mejor forma de buscar similitudes entre strings y se lleg� a la
siguiente conclusi�n: El tiempo y los recursos disponibles para el proyecto
daban pie para utilizar una de las muchas funciones ya programadas que comparan
strings de una manera relativamente b�sica (Cosine distance, Jaccard distance,
Hamming distance, Levenshtein distance, etc). 

Por lo anteriormente expuesto, tenemos que al final fue elegido el m�todo de la
distancia levenshtein, uno de los m�s populares en el �rea, el cual se encarga
de realizar dicha comparaci�n, dando como resultado un porcentaje de similitud
que es utilizado para elegir que tan semejante a la pregunta original es la
pregunta encontrada. Siendo porsupuesto 100% si las string son exactamente
iguales.

Cabe resaltar, que el programa no toma en cuenta la sem�ntica de las string
comparadas. Por ejemplo: oraciones como "el roedor se alimenta de queso" y "el
rat�n come queso", aunque ambas son muy similares en significado, para el
programa ser�n totalmente diferentes.

En este sentido, es importante mencionar la realizaci�n de un esfuerzo por
tomar en cuenta la sem�ntica en la comparaci�n, mas sin embargo, no se pudo
llegar a un resultado debido a la complejidad del problema.

Por �ltimo, el output funciona de la siguiente manera: Luego de encontrar una
pregunta con un porcentaje de similitud deseado, la respuesta asociada a esa
pr ser� mostrada en pantalla.

Contacto
--------

Para mas informaci�n, o alg�n reporte de modificaci�n/bug contacte a traves
de un correo electr�nico a la siguiente direcci�n <andtreso@gmail.com>

