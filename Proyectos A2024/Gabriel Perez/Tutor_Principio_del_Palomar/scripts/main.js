let contador = 0;

//Codigo para la leccion 1
function verificar_l1_p1(){
    let seleccionBotonRadio = document.getElementsByName("leccion1_pregunta_1"); /* Devuelve un arreglo con las opciones  */

  /* encuentra la opcion seleccionada */
    let opcion = getSeleccion(seleccionBotonRadio);
    
    let mensaje = "Recuerda el principio del palomar establece que si tenemos una cantidad de n palomas guardadas en m palomares y n es mayor que m, entonces debe haber al menos un palomar que contenga varias palomas"; 

    switch (opcion) {
        case 0:
            contador++;
            mostrarMensaje(contador, 3, mensaje);
        break;

        case 1:
            contador++;
            mostrarMensaje(contador, 3, mensaje);
        break;

        case 2:
            swal("Correcto bien echo, puedes avanzar");
        
            document.getElementById("boton_siguiente_leccion1").toggleAttribute("hidden");
            contador = 0;
        break;

        case 3:
            contador++;
            mostrarMensaje(contador, 3, mensaje);
        break;

        default:
            swal("No selecciono ninguna opcion");
        break;
    }
}

/*Esta funcion muestra el mensaje que se le especifique en el argumento mensaje.
tambien numFallas sirve para definir el numero de veces que se deve equivocar el usuario antes de mostrar el mensaje.*/
function mostrarMensaje(contador, numFallas, mensaje,) {
    if (contador >= numFallas) {
      swal(mensaje);
      
    } else {
      swal("Incorrecto");
      contador++;
    }
}

//Determina la respuesta seleccionada del usuario
function getSeleccion(respuestas){
    let opcion = false;
    
    for (let i = 0; i < respuestas.length; i++) {
        if (respuestas[i].checked) {
            opcion = i;
            break;
        }
    }

    return opcion;
}

//Codigo para la leccion 2
function verificar_l2_p1() {
    let mensaje1 = "Si se puede determinar intentalo de nuevo";
    let mensaje2 = "Incorrecto, lee de nuevo el enunciado";

    let seleccionBotonRadioPregunta1 = document.getElementsByName("leccion2_pregunta1");

    let opcion = getSeleccion(seleccionBotonRadioPregunta1);

    switch (opcion) {
        case 0:
            swal("Correcto puedes avanzar");
        
            document.getElementById("form_leccion2_pregunta2").toggleAttribute("hidden");
            contador = 0; 
        break;

        case 1:
            
            contador++;
            mostrarMensaje(contador, 1, mensaje1);
        break;

        case 2:
            contador++;
            mostrarMensaje(contador, 1, mensaje2);
        break;

        default:
            swal("No selecciono ninguna opcion");
        break;
    }
}

function verificar_l2_p2() {
    let mensaje1 = "Los palomares son las casillas que contendran algo, en este caso seria la cantidad de pelos que una persona tiene en su cabeza";
    let mensaje2 = "Incorrecto, lee de nuevo el enunciado y trata de entender y abstraer la informacion";

    let seleccionBotonRadioPregunta1 = document.getElementsByName("leccion2_pregunta2");

    let opcion = getSeleccion(seleccionBotonRadioPregunta1);

    switch (opcion) {
        case 0:
            contador++;
            mostrarMensaje(contador, 1, mensaje2);
        break;

        case 1:
            
            contador++;
            mostrarMensaje(contador, 3, mensaje1);
        break;

        case 2:
            swal("Correcto puedes avanzar");
        
            document.getElementById("form_leccion2_pregunta3").toggleAttribute("hidden");
            contador = 0; 
        break;

        default:
            swal("No selecciono ninguna opcion");
        break;
    }
} 

function verificar_l2_p3() {
    let mensaje1 = "Incorrecto. Consejo: Siempre busca que la funcion no sea inyectiva, para aplicar el principio";
    let mensaje2 = "Incorrecto, lee de nuevo el enunciado y trata de entender y abstraer la informacion";

    let seleccionBotonRadioPregunta = document.getElementsByName("leccion2_pregunta3");

    let opcion = getSeleccion(seleccionBotonRadioPregunta);

    switch (opcion) {
        case 0:
            contador++;
            mostrarMensaje(contador, 3, mensaje1);
        break;

        case 1:
            swal("Correcto puedes avanzar");
        
            document.getElementById("form_leccion2_pregunta4").toggleAttribute("hidden");
            contador = 0;    
        break;

        case 2:
            contador++;
            mostrarMensaje(contador, 3, mensaje1);
        break;

        default:
            swal("No selecciono ninguna opcion");
        break;
    }
} 

function verificar_l2_p4() {
    let mensaje1 = "Incorrecto. Consejo: repasa el video de la leccion 1";
    let mensaje2 = "Incorrecto. El principio solo dice que hay almenos un nido con mas de una paloma, puede que hallan mas nidos ocupados por mas de una paloma pero no lo podemos deducir por el principio del palomar";

    let seleccionBotonRadioPregunta = document.getElementsByName("leccion2_pregunta4");

    let opcion = getSeleccion(seleccionBotonRadioPregunta);

    switch (opcion) {
        case 0:
            contador++;
            mostrarMensaje(contador, 2, mensaje1);
        break;

        case 1:
            contador++;
            mostrarMensaje(contador, 2, mensaje2); 
        break;

        case 2:
            swal("Correcto puedes avanzar");
        
            document.getElementById("boton_siguiente_leccion2").toggleAttribute("hidden");
            contador = 0;
        break;

        case 3:
            contador++;
            mostrarMensaje(contador, 2, mensaje2); 
        break;

        default:
            swal("No selecciono ninguna opcion");
        break;
    }
} 

function verificar_l3_p1() {
    let mensaje1 = "Incorrecto, pista: Debemos hacer una funcion que no sea inyectiva";
    
    let mensaje2 = "Incorrecto, pista: Debemos tomar 2019 numeros cualesquiera del conjunto de los enteros";

    let mensaje3 = "Incorrecto";

    let seleccionBotonRadioPregunta = document.getElementsByName("leccion3_pregunta1");

    let opcion = getSeleccion(seleccionBotonRadioPregunta);

    switch (opcion) {
        case 0:
            contador++;
            mostrarMensaje(contador, 2, mensaje1);
        break;

        case 1:
            contador++;
            mostrarMensaje(contador, 2, mensaje2); 
        break;

        case 2:
            swal("Correcto puedes avanzar");
        
            document.getElementById("form_leccion3_pregunta2").toggleAttribute("hidden");
            contador = 0;
        break;

        case 3:
            contador++;
            mostrarMensaje(contador, 1, mensaje3);
        break;

        default:
            swal("No selecciono ninguna opcion");
        break;
    }
}

function verificar_l3_p2() {
    let mensaje1 = "Incorrecto, vuelve a leer el enunciado y trata de comprenderlo";
    
    let mensaje2 = "Nos piden el numero de nidos y este valor siempre debe ser menor que el numero de palomas para poder aplicar el principio";

    let seleccionBotonRadioPregunta = document.getElementsByName("leccion3_pregunta2");

    let opcion = getSeleccion(seleccionBotonRadioPregunta);

    switch (opcion) {
        case 0:
            contador++;
            mostrarMensaje(contador, 2, mensaje1);
        break;

        case 1:
            swal("Correcto puedes avanzar");
        
            document.getElementById("form_leccion3_pregunta3").toggleAttribute("hidden");
            contador = 0;
        break;

        case 2:
            contador++;
            mostrarMensaje(contador, 2, mensaje2); 
        break;

        default:
            swal("No selecciono ninguna opcion");
        break;
    }
}

function verificar_l3_p3() {
    let mensaje = "El cardinal del dominio tiene que ser mayor al cardinal del codominio";

    let seleccionBotonRadioPregunta = document.getElementsByName("leccion3_pregunta3");

    let opcion = getSeleccion(seleccionBotonRadioPregunta);

    switch (opcion) {
        case 0:
            swal("Correcto puedes avanzar");
        
            document.getElementById("form_leccion3_pregunta4").toggleAttribute("hidden");
            contador = 0;
        break;

        case 1:
            contador++;
            mostrarMensaje(contador, 2, mensaje);
        break;

        case 2:
            contador++;
            mostrarMensaje(contador, 2, mensaje); 
        break;

        default:
            swal("No selecciono ninguna opcion");
        break;
    }
}

function verificar_l3_p4() {
    let mensaje1 = "Por lo contestado anteriormente este no es un raznamiento correcto";
    let mensaje2 = "Incorrecto, a partir del principio del palomar no es posible decir esto";

    let seleccionBotonRadioPregunta = document.getElementsByName("leccion3_pregunta4");

    let opcion = getSeleccion(seleccionBotonRadioPregunta);

    switch (opcion) {
        case 0:
            contador++;
            mostrarMensaje(contador, 2, mensaje1);
        break;

        case 1:
            contador++;
            mostrarMensaje(contador, 2, mensaje2);
        break;

        case 2:
            swal("Correcto puedes avanzar");
        
            document.getElementById("boton_siguiente_leccion3").toggleAttribute("hidden");
            contador = 0; 
        break;

        default:
            swal("No selecciono ninguna opcion");
        break;
    }
}

function verificar_l4_p1() {
    let mensaje1 = "Incorrecto, El dominio debe tener un número de elementos finito";
    let mensaje2 = "Incorrecto, pista: podemos escoger 100 numeros cualesquiera de entre los naturales";
    let mensaje3 = "Incorrecto";

    let seleccionBotonRadioPregunta = document.getElementsByName("leccion4_pregunta1");

    let opcion = getSeleccion(seleccionBotonRadioPregunta);

    switch (opcion) {
        case 0:
            contador++;
            mostrarMensaje(contador, 2, mensaje1);
        break;

        case 1:
            contador++;
            mostrarMensaje(contador, 1, mensaje2);
        break;
        
        case 2:
            swal("Correcto puedes avanzar");
        
            document.getElementById("form_leccion4_pregunta2").toggleAttribute("hidden");
            contador = 0; 
        break;

        case 3:
            contador++;
            mostrarMensaje(contador, 1, mensaje3);
        break;

        default:
            swal("No selecciono ninguna opcion");
        break;
    }
}

function verificar_l4_p2() {
    let mensaje1 = "El número de palomares (nidos) no puede ser iagual al número de palomas";
    let mensaje2 = "Incorrecto";

    let seleccionBotonRadioPregunta = document.getElementsByName("leccion4_pregunta1");

    let opcion = getSeleccion(seleccionBotonRadioPregunta);

    switch (opcion) {
        case 0:
            contador++;
            mostrarMensaje(contador, 2, mensaje1);
        break;

        case 1:
            contador++;
            mostrarMensaje(contador, 2, mensaje2);
        break;
        
        case 2:
            swal("Correcto puedes avanzar");
        
            document.getElementById("form_leccion4_pregunta3").toggleAttribute("hidden");
            contador = 0; 
        break;

        default:
            swal("No selecciono ninguna opcion");
        break;
    }
}

function verificar_l4_p3() {
    let mensaje1 = "Incorrecto";
    let mensaje2 = "En el enunciado dice que siempre se podra encontrar dos numeros cuya diferencia sea multiplo de 99";

    let seleccionBotonRadioPregunta = document.getElementsByName("leccion4_pregunta3");

    let opcion = getSeleccion(seleccionBotonRadioPregunta);

    switch (opcion) {
        case 0:
            swal("Correcto puedes avanzar");
        
            document.getElementById("boton_fin_curso").toggleAttribute("hidden");
            contador = 0; 
        break;

        case 1:
            contador++;
            mostrarMensaje(contador, 2, mensaje1);
        break;
        
        case 2:
            contador++;
            mostrarMensaje(contador, 2, mensaje2);
        break;

        default:
            swal("No selecciono ninguna opcion");
        break;
    }
}