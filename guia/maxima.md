#¿Qué es maxima?
>Maxima es un software matemático muy potente para la manipulación de expresiones simbólicas y numéricas, una herramienta muy valorada si tu campo de estudio o acción tiene que ver con las ciencias, cómo siempre un software con el cual automatizar algo que nos lleva a nosotros bastante tiempo y esfuerzo es siempre muy apreciado, ya sea para comprobar si los resultados a los que llegamos son correctos o simplemente para ahorrar tiempo.

##1. ¿Cómo instalar Maxima?.
 [página Oficial](http://maxima.sourceforge.net/es/).
 
Abrir la terminal y ejecutar

*Ubuntu
```
sudo apt-get install maxima xmaxima
sudo add-apt-repository ppa:blahota/maxima
sudo apt-get update
```
Si desea instalar maxima en Windows, Mac

[página Oficial de Descarga](http://maxima.sourceforge.net/es/download.html)

####Tutoriales de Instalación
[Windows](https://blogdelingeniero1.wordpress.com/2014/05/03/instalacion-de-maxima-wxmaxima-en-windows/)

[Mac](http://www.faq-mac.com/2010/12/instalacion-de-maximawxmaxima-en-un-mac-por-javier-arantegui/)

##2. ¿Cómo inicializar Maxima?

Inicializa Maxima desde la Terminal
```
$ maxima
```
Si queremos que Maxima abra con la interfaz gráfica
```
$ xmaxima
```
##3. ¿Cómo Usar Maxima?
En la página oficial aparecen varios Manuales de ayuda

[Manuales página Oficial](http://maxima.sourceforge.net/es/documentation.html)

[Otro Manual](http://euler.us.es/~renato/clases/maxima/manualesPDF/maxima-manual-UGR.pdf)

 Los usuarios de Maxima poseen interfaces como ***wxMaxima*** para un entorno mas facil de usar

##4. ¿Cómo instaslar wxMaxima?
```
sudo apt-get install wxmaxima
sudo add-apt-repository ppa:blahota/wxmaxima
sudo apt-get update
```
###Para Inicializar en wxmaxima 
```
$ wxmaxima
```

###¿Cómo usar wxMaxima?
[Guia1](https://lihuen.linti.unlp.edu.ar/index.php/Wxmaxima)

[Guia2](http://andrejv.github.io/wxmaxima/)


### Manual de Maxima y wxMaxima en asignatura de calculo diferencial?
[Calculo](http://euler.us.es/~renato/clases/maxima/manualesPDF/ManualMaximaCalculo.pdf)

##Maxima esta disponible en Android
[Android](https://sites.google.com/site/maximaonandroid/)

===============================================================
#¿Qué es Jacomax?
>“Jacomax (Conexión de Java para Maxima) es una interfaz básica en Java para el sistema de álgebra computacional Maxima.”

##1. ¿Cómo instalar Jacomax?

* Debemos tener instalado Maxima
* Instalar Eclipse
```
sudo add-apt-repository ppa:webupd8team/java 
sudo apt-get update 
sudo apt-get install oracle-java7-installer 
sudo apt-get install alacarte 
```
* Descargar Eclipse [Aqui](http://www.eclipse.org/downloads/)
``` 
sudo mkdir -p /opt/ide/32 
sudo mv ~/Descargas/eclipse /opt/ide/32 
cd /opt/ide/32 
sudo chown -R root:root eclipse 
sudo ln -sf /opt/ide/32/eclipse/eclipse /usr/bin/ 
```
* Descargar Jacomax. 
   [Aqui](https://sourceforge.net/projects/jacomax/) 
* Debe estar descargado en la misma carpeta de Maxima
* Se crea un nuevo proyecto en eclipse 
* Incluir las librerias de jacomax en cada proyecto 

Alguna de estas librerias son:
```

package firstPackage.jacomax
import org.slf4j.*
import org.slf4j.helpers.*
import org.slf4j.spi.*
import uk.ac.ed.ph.jacomax.*
import uk.ac.ed.ph.jacomax.internal.*
import uk.ac.ed.ph.jacomax.utilities.*
import java.io.File
import java.io.FileInputStream
import java.io.FileNotFoundException
import java.io.IOException 
import java.io.InputStream 
import java.util.ArrayLis 
import java.util.Arrays 
import java.util.List
import java.util.Properties
import java.io.IOExceptio 
import java.io.InputStream
import java.io.OutputStream 
import java.nio.charset.Charset
import java.nio.charset.IllegalCharsetNameException 
import java.util.ArrayList
import java.util.Arrays
import java.util.List 
import java.util.regex.Matcher
import java.util.regex.Pattern 
```
Algunas páginas de Interes sobre Jacomax en **Ingles**

[página Principal](https://www.wiki.ed.ac.uk/display/Physics/Jacomax)

[Git del Creador ](https://github.com/davemckain/jacomax/blob/master/jacomax.properties.sample)

[Configuración](http://jacomax.sourceforge.net/maven/apidocs/uk/ac/ed/ph/jacomax/JacomaxPropertiesConfigurator.html)

[Algunos Ejemplos](http://www.programcreek.com/java-api-examples/index.php?source_dir=geogebra-master/geogebra/geogebra/cas/jacomax/MaximaProcessLauncher.java)

