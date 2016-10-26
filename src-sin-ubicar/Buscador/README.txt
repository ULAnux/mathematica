Buscador Version 1.0 5/9/2016 Autor: Andrés Trejo

¿Qué es?
--------

"Buscador" es un código que funciona con archivos .pl (código hecho en el
lenguaje de programación SWI-Prolog). Es llamado buscador ya que su función es
la de buscar entre varios archivos ".pl" una pregunta contenida un una "pr"
(Estructura de datos tipo Pregunta-Respuesta) que sea igual o similar a la
pregunta insertada por el usuario.

Descripción
-----------

Dicho código hace uso de funciones de procesamiento de archivos con las cuales
las pr contenidas en los .pl son tokenizadas una por una, por un método que
hace uso de expresiones regulares, de manera que la información que contienen
quede archivada en un array con la siguiente estructura: [Pregunta],
[Respuesta], [Información adicional], [], ... ,[]. En pocas palabras tokeniza
toda la información contenida entre corchetes. Por ahora sólo es utilizada una
string de la pregunta que será luego comparada con la pregunta ingresada.

En cuanto a la parte de la comparación, se realizó una investigación para dar
con la mejor forma de buscar similitudes entre strings y se llegó a la
siguiente conclusión: El tiempo y los recursos disponibles para el proyecto
daban pie para utilizar una de las muchas funciones ya programadas que comparan
strings de una manera relativamente básica (Cosine distance, Jaccard distance,
Hamming distance, Levenshtein distance, etc). 

Por lo anteriormente expuesto, tenemos que al final fue elegido el método de la
distancia levenshtein, uno de los más populares en el área, el cual se encarga
de realizar dicha comparación, dando como resultado un porcentaje de similitud
que es utilizado para elegir que tan semejante a la pregunta original es la
pregunta encontrada. Siendo porsupuesto 100% si las string son exactamente
iguales.

Cabe resaltar, que el programa no toma en cuenta la semántica de las string
comparadas. Por ejemplo: oraciones como "el roedor se alimenta de queso" y "el
ratón come queso", aunque ambas son muy similares en significado, para el
programa serán totalmente diferentes.

En este sentido, es importante mencionar la realización de un esfuerzo por
tomar en cuenta la semántica en la comparación, mas sin embargo, no se pudo
llegar a un resultado debido a la complejidad del problema.

Por último, el output funciona de la siguiente manera: Luego de encontrar una
pregunta con un porcentaje de similitud deseado, la respuesta asociada a esa
pr será mostrada en pantalla.

Contacto
--------

Para mas información, o algún reporte de modificación/bug contacte a traves
de un correo electrónico a la siguiente dirección <andtreso@gmail.com>

