# mathematica
Un juego para aprender matemática y lógica
Para ayuda con los comandos y uso del git se pueden revisar los siguientes enlaces o seguir las intrucciones posteriores

https://www.youtube.com/watch?v=m12XPk6ktiM
http://conociendogithub.readthedocs.org/en/latest/data/dinamica-de-uso/
https://help.github.com/articles/set-up-git/#platform-all

https://github.com

http://git-scm.com/download/linux

// Desde el Terminal
Primero hay que Verificar si git esta instalado en tu ordenador
$ git -w

de no estarlo para instalarlo para instalarlo utilizamos el siguiente comando
$ sudo apt-get install git

https://help.github.com/articles/set-up-git/#platform-all

$ git config --global user.name "YOUR NAME"

$ git config --global user.email "YOUR EMAIL ADDRESS"

Para clonar el projecto : 

Te ubicas en la carpeta o espacio de tu preferncia o bien creas una y una ves e ella usas el siguiente comando

$ git clone https://github.com/YOUR-USERNAME/YOUR-REPOSITORY

Con Mathematica debe ser:

git clone https://github.com/ULAnux/mathematica
Cloning into 'mathematica'...
remote: Counting objects: 3, done.
remote: Compressing objects: 100% (2/2), done.
remote: Total 3 (delta 0), reused 0 (delta 0), pack-reused 0
Unpacking objects: 100% (3/3), done.
Checking connectivity... done.

https://help.github.com/articles/adding-a-file-to-a-repository-from-the-command-line/

cd <dir-repositorio> 
 
Para agregar Y/O registrar cambios:
 git add <filename>
 git add .

Para hacer commit o etiquetar cambios:
 $ git commit -m "Commit message"

Para enviar estos cambios al repositorio remoto:
 $ git push origin master

Para actualizar repositorio local al commit más nuevo:
 $ git pull

Para revisar lo añadido al repositorio:
	$ git status


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

$ git status

$ git reset HEAD leeme-mathematica.txt~

$ git status

$ git push origin master


