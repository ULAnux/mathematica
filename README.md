# mathematica
Un juego para aprender matemática y lógica 

#Primero que nada debo entrar a https://github.com y crear una cuenta
https://github.com

http://git-scm.com/download/linux

On your computer, open your command line application.

#Luego de eso debo descargar Github para eso, abro el terminal y agrego la siguiente linea:
$ apt-get install git
#presiono enter e instalo el programa.

https://help.github.com/articles/set-up-git/#platform-all

#Luego debo configurar mi nombre y correo, esto para identificarme y decirle a Github quien soy y el sepa cuando realice modificaciones, para configurar estos datos en mi computadora ejecuto los siguientes comandos (donde dice Your Name y Your Email Address debo colocar mi nombre y correo.)
$ git config --global user.name "YOUR NAME"

$ git config --global user.email "YOUR EMAIL ADDRESS"

#Debo clonar un proyecto que ya tenga creado en Git o con el cual quiera colaborar y hacerle modificaciones para esto: 

Para clonar el projecto: 
#Ejecuto la siguiente linea:
$ git clone https://github.com/YOUR-USERNAME/YOUR-REPOSITORY

Con Mathematica debe ser:

#en el caso de que vaya a clonar el repositorio de mathetica es la siguiente linea:
git clone https://github.com/ULAnux/mathematica
Cloning into 'mathematica'...
remote: Counting objects: 3, done.
remote: Compressing objects: 100% (2/2), done.
remote: Total 3 (delta 0), reused 0 (delta 0), pack-reused 0
Unpacking objects: 100% (3/3), done.
Checking connectivity... done.

https://help.github.com/articles/adding-a-file-to-a-repository-from-the-command-line/

#Al haber clonado el repositorio debo ingresar a la carpeta:
cd <dir-repositorio> 

#el comando git add lo usamos para comenzar a seguir un nuevo archivo, debemos seguir los archivos que hemos modificado si queremos subirlos, para prepararlos. En el terminal se usa git add nombre_archivo
$ git add .

#git commit lo usamos para confirmar, confirmamos las modificaciones que se hicieron, en esta confirmaci'on solo se agregaran los archivos que le hayamos dado git add. Es importante agregar un comentario cuando hagamos commit y en el comentario debemos escribir los cambios mas importantes que se hicieron.
$ git commit -m "Primer commit to github"

#Cuando tu proyecto se encuentra en un estado que quieres compartir, y ya he add y commit todos los archivos que deseo compartir, tienes que enviarlo al repositorio, para eso utilizo el siguiente comando:
$ git push origin master
#git push [nombre-remoto][nombre-rama]. Si quieres enviar tu rama maestra (master) a tu servidor origen (origin), 

Con Mathematica 

cd mathematica

$ git add .

$ git commit -m "comentario del commit"

 git commit -m "Primer commit"
[master c47a0b3] Primer commit
 38 files changed, 12094 insertions(+)
 create mode 100644 0000.pl
 create mode 100644 0001.pl
 create mode 100644 0002.pl
 create mode 100644 0003.pl
 create mode 100644 0004.pl
 create mode 100644 0005.pl
 create mode 100644 0006.pl
 create mode 100644 0007.pl
 create mode 100644 0008.pl
 create mode 100644 0009.pl
 create mode 100644 0010.pl
 create mode 100644 0011.pl
 create mode 100644 0012.pl
 create mode 100644 0013.pl
 create mode 100644 0014.pl
 create mode 100644 0015.pl
 create mode 100644 0016.pl
 create mode 100644 0017.pl
 create mode 100644 0018.pl
 create mode 100644 0019.pl
 create mode 100644 0020.pl
 create mode 100644 0021.pl
 create mode 100644 0022.pl
 create mode 100644 0023.pl
 create mode 100644 0024.pl
 create mode 100644 0026.pl
 create mode 100644 0027.pl
 create mode 100644 bootstrap.css
 create mode 100644 buscador.pl
 create mode 100644 conjuntos.pl
 create mode 100644 indice.pl
 create mode 100644 leeme-mathematica.txt
 create mode 100644 leeme-mathematica.txt~
 create mode 100644 lexer.pl
 create mode 100644 logica.pl
 create mode 100644 main.css
 create mode 100644 mathematica.pl
 create mode 100644 servicio.pl

#git status me sirve para ver que archivos he modificado, agregado o comenzado a seguir, y confirmado. me va a mostrar el status de todos estos archivos
$ git status

#Este comando lo utilizo para sacar algun archivo del area de archivos en preparacion
$ git reset HEAD leeme-mathematica.txt~

$ git status

$ git push origin master

#El comando git rm me sirve para eliminar un archivo desde el area de preparacion y si lo ejecuto de nuevo eliminara el archivo del directorio de trabajo
$ git rm

#Si deseo copiar o respaldar un directorio local lo que debo hacer es clonarlo y se hace usando el siguiente comando:
git clone /path/to/repository
