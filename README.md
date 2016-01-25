// Realizado por Dimitrio Mandamadiotis
// https://github.com/dimitrio-m

# Mathematica
[Un juego para aprender matemática y lógica](https://github.com/ULAnux/mathematica)

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

Con Mathematica debe ser:

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

En nuestro caso lo primero a realizarse es una pagina web donde correra la aplicacion, en un entorno de programacion desde el servidor, llamado **NodeJS**, el cual usa **Javascript**, como lenguaje de progrmacion. Ademas, usaremos **MongoDB**, como manejador de base de datos. Tambien se usaran APIs (Application programming interface), para: el sign in y sign up del usuario (passport), comunicar con el lenguaje **Prolog** (Pengines), encriptar contrasenias (bcrypt) y encriptar navegacion (TLS/SSL usando https).

Se tendra un gestor de usuarios, que manipulara tanto el ingrese como el almacenaje de su progreso en el juego; la interfaz entre el lenguaje prolog y Node,  basado en preguntas y respuestas para el usuario.
