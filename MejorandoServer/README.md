# Introduccion

Este es un spring para la clase de Matematicas Discretas. La idea de proyecto para la materia, es hacer las correcciones necesarias para que la aplicacion web creada por Lizandro y Dimitris, corra perfectamente en cualquier servidor, agregando nuevas modificaciones a la interfaz y al nucleo de la aplicacion.

# Mathematica Game Server

Este es el juego para aprender matematicas discretas. Idea proporcionado por Jacinto Davila. Esta aplicacion web fue creada por Lizandro Zerpa y Dimitris Mandamadiotis, para la clase de matematicas discretas.  

Este manual de instalacion es para computadoras con sistemas operativos *nix.

Esta es una adaptacion mejorada del proyecto creado por Lizandro Zerpa y Dimitris Mandamadiotis.

# ¿Como instalarlo?

Para poder correr la aplicacion es necesario instalar, es necesario tener instalado:

1. NodeJS
2. MongoDB
3. Pengines

### Instalar NodeJS

En una terminal ejecutar:
```
  sudo apt-get install curl
  curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
  sudo apt-get install -y nodejs
```
### Instalar MongoDB

En una Terminal :
```
	sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
	echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
	sudo apt-get update ; apt-get install mongodb
```

Para que MongoDB funcione es necesario crear en el directorio raiz una carpeta llamada data y dentro de esta una llamada db, la cual es necesaria agregar permisos de escritura al usuario. Para hacer esto ejecutar:

```
  	sudo mkdir -p /data/db
  	sudo chown -R `whoami` /data
```

Comprobando la version instalada

```
	mongo --version
```

### Instalar Modulos para Node JS

En este paso ya se debe tener instalado NodeJS. En la carpeta server, abrir una terminal y ejecutar:

```
	npm install
```

Luego se debe esperar a que el gestor de packetes de node descargue todos los modulos y los instale.

### Instalar Pengines 

*Se debe tener instalado GIT*

SUGERENCIA: En una carpeta donde se almacenan repositorios de GIT, en la terminal moverse a esta carpeta y ejecutar:

```
	git clone https://github.com/SWI-Prolog/pengines.git
```

## Como ejecutarlo

Para poder ejecutar la aplicacion es necesario correr las 3 aplicaciones instaladas.

### Iniciar Pengines 

*Se debe tener instalado la version de SWI-PROLOG => 7.1.5*

En la carpeta donde fue instalado Pengines, abrir terminal:

```
	cd pengines
	swipl run.pl
```


### Iniciar Mongodb 

Abrir una terminal y ejecutar:
```
	mongod
```

### Iniciar el Servidor Node --//

En la carpeta donde se encuetra este archivo, abrir terminal:

```
	cd server
	node server.js
```


## Configuracion de correo

RECOMENDACION: Crear un correo "Gmail" exclusivo para esta labor

Luego de poseer una cuenta "Gmail" configurar los siguientes parametros de seguridad:
en "Mi cuenta"-->"Inicio de sesion y seguridad"-->"Aplicaciones y sitios conectados a tu cuenta"

Activar "Permitir el acceso de aplicaciones menos seguras:" (Mientras no se posean derechos TSL
autorizadas se debe mantener activa esta opcion)

---Para la Configuracion del correo en el servidor---

Dentro de la carpeta donde se encuentra este archivo, modificar el archivo
server/config/passwordRecoveryAccount.js y llenar los datos respectivos

email: "CORREO@GMAIL.COM"
pass: "CONTRASEÑA"

