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

	3. Instalar ultima version de GIT

				$ apt-get install git

	4. Para futuras actualizaciones
			
				$ git clone git://git.kernel.org/pub/scm/git/git.git 

PARA CONFIGURAR POR PRIMERA VEZ TUS DATOS PARA GIT

				$ git config --global user.name "Tu Nombre"
				$ git config --global user.email "direccion-de-correo@ejemplo.com"

PARA AGREGAR UN ARCHIVO AL REPOSITORIO Mathematica
		
	1. Llevar mathematica a tu cuenta GitHub

				Ver instrucciones: http://aprendegit.com/fork-de-repositorios-para-que-sirve/

	2. Traer el repositorio mathematica de tu cuenta a un repositorio local

				$git clone https://github.com/[Nombre-usuario]/mathematica.git

	4. Agregar archivos y enviar al repositorio remoto propio

				$git add -A
				$git commit -m "Mensaje de tu primer commit"
				// con el comando: $git log  ; podras ver los commits hechos
				// Con el comando: $ git status  ;podras ver el estado de tus archivos a subir

				$git reset HEAD archivo.txt~ //eliminara el archivo residual del archivo creado
				$git push origin master

	5. Informar al organizador de mathematica los cambios realizados

			- En tu cuenta de github, ir a profiles y entrar en el repositorio "mathematica"
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
para obtener el mas alto desempanio de la app.

		En nuestro caso lo primero a realizarse es una pagina web donde correra la aplicacion, en un entorno de programacion
desde el servidor, llamado NodeJS, el cual usa Javascript, como lenguaje de progrmacion. Ademas, usaremos MongoDB, como
manejador de base de datos. Tambien se usaran APIs (Application programming interface), para: el sign in y sign up del usuario
(passport), comunicar con el lenguaje Prolog (Pengines), encriptar contrasenias (bcrypt) y encriptar navegacion (TLS/ssl usando https).

		Se tendra un gestor de usuarios, que manipulara tanto el ingrese como el almacenaje de su progreso en el juego; la interfaz 
entre el lenguaje prolog y Node,  basado en preguntas y respuestas para el usuario.

 




