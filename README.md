<<<<<<< HEAD
// Realizado por Dimitrio Mandamadiotis
// https://github.com/dimitrio-m

# Mathematica
[Un juego para aprender matemática y lógica](https://github.com/ULAnux/mathematica)

# Nueva estructura de directorios

    android-apps: Para las aplicaciones para Android
    guias: Para todas las guias de estudio
    node-server: Para el juego completo
    pdfs-sin-ubicar: Para cualquier pdfs que aun no forme parte del juego
    prolog-server: Para el gestor de las prs en Prolog
    README.md: Este archivo
    src-sin-ubicar: Para cualquier otro fuente sin ubicar


## ¿Cómo instalar git en Linux?

1. Abre en tu computadora una terminal y ejecuta el siguiente comando dependiendo de la distribucion de linux que uses:

* Debian/Ubuntu
`apt-get install git`

* Fedora
`yum install git` (up to Fedora 21)
`dnf install git` (Fedora 22 and later)

* Gentoo
`emerge --ask --verbose dev-vcs/git`

* Arch Linux
`pacman -S git`

* openSUSE
`zypper install git`

* FreeBSD
`cd /usr/ports/devel/git`
`make install`

* Solaris 11 Express
`pkg install developer/versioning/git`

* OpenBSD
`pkg_add git`

2. Luego verifica que se instalo ejecutando:
```
git --version
```

## Configuración básica:

1. Para agregar tu nombre a todas tus colaboraciones automaticamente debes definir la variable de nombre de la siguiente manera:

`git config --global user.name "TU NOMBRE"`

2. Para agregar también tu correo electronico a todas tus colaboraciones automaticamente debes definir la variable de correp de la siguiente manera:

`git config --global user.email "TU CORREO ELECTRONICO"`

## Uso:

### Clonar un proyecto:

1. Busca el proyecto que deseas clonar en la pagina de [github](https://github.com).

2. Copia la URL del proyecto.

3. En la terminal ejecuta:

`git clone https://github.com/USUARIO/PROYECTO`
=======
//Informacion tomada de: 
// https://git-scm.com/book/es/v1/Empezando-Instalando-Git
// https://help.github.com/articles/fork-a-repo/
// http://aprendegit.com/fork-de-repositorios-para-que-sirve/



	* Las siguientes instrucciones se llevaran a cabo en la Terminal

PARA INSTALAR GIT EN LINUX

	1. Instala el gestor de paquetes YUM
		
				$ apt-get install yum

	2. Instalar dependencias de GIT
		
				$ yum install curl-devel expat-devel gettext-devel \ openssl-devel zlib-devel
				$ apt-get install libcurl4-gnutls-dev libexpat1-dev gettext \ libz-dev libssl-dev

	3. Para prevenir algun error durante la instalacion es recomendable utilizar previamente el comando 
				
				$ apt-get update

	4. Instalar ultima version de GIT. 


				$ apt-get install git
>>>>>>> 25c6756e5f3c454f710e19ddfb1b5a0a5db1b77a

	5. Para futuras actualizaciones
			
				$ git clone git://git.kernel.org/pub/scm/git/git.git 

<<<<<<< HEAD
`git clone https://github.com/ULAnux/mathematica`

Esto creara una carpeta donde estará el proyecto.

### Hacer un commit:

1. Se debe acceder a la carpeta del proyecto.

`cd PROYECTO`

2. Luego se agregan todos los archivos a la fase de trabajo.

`git add -A`

3. Puedes verificar el estado de los archivos usando:

`git status`

4. Ya terminada la edición de los archivos se procede a guardar los cambios de la siguiente manera:

`git commit -m "MENSAJE DESCRIPTIVO"`

### Subir los cambios al repositorio en GitHub:

1. Se verifica que el repositorio remoto esta configurado:

`git remote -v`

Si el comando no muestra la URL del repositorio se debe agregar el mismo de la siguiente forma:

`git remote add origin https://github.com/USUARIO/PROYECTO`

2. Luego de hacer los respectivos cambios y guardarlos en un commit se procede a actualizar el repositorio remoto mediante el comando:

`git push origin NOMBRE_DE_RAMA` o en su defecto `git push origin master`

### Ver los commits realizados:

Dentro de la carpeta del proyecto ejecutamos:

`git log`

Nos mostrara el autor del commit, su correo, la fecha y un hash SHA que representa el identificador de ese commit.

### Retroceder a otro commit:

Si se desea regresar al estado del proyecto en un commit especifico se debe ejecutar:

`git checkout HASH_DEL_COMMIT`

Si se desea volver al ultimo commit ejecute:

`git checkout master`

### Crear una rama o branch:

Una rama o branch es otro hilo de desarrollo del programa que no afecta al hilo principal o comunmente llamado master

Para crear una nueva rama del proyecto se debe ejecutar:

`git branch NOMBRE_DE_RAMA`

Se puede verificar las ramas existentes ejecutando:

`git branch`

Dentro de cada rama se usan los commits y push de la misma manera.

### Cambiar de ramas:

Para cambiar entre ramas simplemente se utiliza el comando:

`git checkout NOMBRE_DE_RAMA`

### Eliminar un commit:

Hay dos formas de eliminar un commit:

1. SOFT RESET:

Un SOFT RESET es cuando se eliminan los commits pero se conserva el espacio de trabajo actual. Para ello se debe ejecutar el comando:

`git reset --soft HASH_DEL_COMMIT_QUE_QUEDARA_COMO_ULTIMO`

2. HARD RESET:

En un HARD RESET se eliminan los commits y se actualiza el espacio de trabajo al del commit final.

`git reset --hard HASH_DEL_COMMIT_QUE_QUEDARA_COMO_ULTIMO`

## Contribución

La contribución sera realizada, por: **Lizandro Zerpa** y **Dimitrio Mandamadiotis**.

La idea basica es traer la aplicacion "Mathematica" a un entorno contemporaneo usando herramientas poderosas, para obtener el mas alto desempanio de la app.
=======
PARA CONFIGURAR POR PRIMERA VEZ TUS DATOS PARA GIT

				$ git config --global user.name "Tu Nombre"
				$ git config --global user.email "direccion-de-correo@ejemplo.com"

PARA AGREGAR UN ARCHIVO AL REPOSITORIO Mathematica
		
	1. Llevar mathematica a tu cuenta GitHub

				Ver instrucciones: http://aprendegit.com/fork-de-repositorios-para-que-sirve/

	2. Traer el repositorio mathematica de tu cuenta a un repositorio local

				$git clone https://github.com/[Nombre-usuario]/mathematica.git

	4. Agregar o editar archivos y enviar al repositorio remoto propio

				$git add -A
				$git commit -m "Mensaje de tu primer commit o alguna descripcion de los cambios o contribuciones realizadas al repositorio original."
				// con el comando: $git log  ; podras ver los commits hechos
				// Con el comando: $ git status  ;podras ver el estado de tus archivos a subir

				$git reset HEAD archivo.txt~ //eliminara el archivo residual del archivo creado
				$git push origin master

	5. Informar al organizador de mathematica los cambios realizados

			- En tu cuenta de github, ir a profiles y entrar en el repositorio "mathematica" perteneciente al organizador (no confundir con el repositorio creado en nuestra cuenta github)
			- Oprimir el boton "New pull request"
			- Luego al boton "Create pull request"
			- Describir lo que se realizo y darle un titulo
			- Luego oprimir "Create pull request"
			- Esperar respuesta


//////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////       CONTRIBUCION      ////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////


La contribucion sera realizada, por: Lizandro Zerpa y Dimitrio Mandamadiotis

		La idea basica es traer la aplicacion "mathematica" a un entorno contemporaneo usando herramientas poderosas,
para obtener el mas alto desempenio de la app.

		En nuestro caso lo primero a realizarse es una pagina web donde correra la aplicacion, en un entorno de programacion
desde el servidor, llamado NodeJS, el cual usa Javascript, como lenguaje de progrmacion. Ademas, usaremos MongoDB, como
manejador de base de datos. Tambien se usaran APIs (Application programming interface), para: el sign in y sign up del usuario
(passport), comunicar con el lenguaje Prolog (Pengines), encriptar contrasenias (bcrypt) y encriptar navegacion (TLS/ssl usando https).

		Se tendra un gestor de usuarios, que manipulara tanto el ingrese como el almacenaje de su progreso en el juego; la interfaz 
entre el lenguaje prolog y Node,  basado en preguntas y respuestas para el usuario.

 


>>>>>>> 25c6756e5f3c454f710e19ddfb1b5a0a5db1b77a

En nuestro caso lo primero a realizarse es una pagina web donde correra la aplicacion, en un entorno de programacion desde el servidor, llamado **NodeJS**, el cual usa **Javascript**, como lenguaje de progrmacion. Ademas, usaremos **MongoDB**, como manejador de base de datos. Tambien se usaran APIs (Application programming interface), para: el sign in y sign up del usuario (passport), comunicar con el lenguaje **Prolog** (Pengines), encriptar contrasenias (bcrypt) y encriptar navegacion (TLS/SSL usando https).

Se tendra un gestor de usuarios, que manipulara tanto el ingrese como el almacenaje de su progreso en el juego; la interfaz entre el lenguaje prolog y Node,  basado en preguntas y respuestas para el usuario.
