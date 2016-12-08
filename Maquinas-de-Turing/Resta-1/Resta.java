/**
  @file Resta.java
  @brief Archivo principal del programa

  @author Reinoza, José
  @version: 1.0
  @date: 22/Noviembre/2016
*/

/*Ésta máquina de Turing elimina de una cadena de unos (1) la cantidad de unos ingresados. Ejemplo de entrada: 111-1  dando como resultado 11. También permite obtener resultados negativos como por ejemplo la operación 1-11 devuelve -1 como resultado.*/

import java.io.IOException;
import java.io.BufferedReader;
import java.io.InputStreamReader;

public class Resta {

	//Declaración de las variables
	public static String cadena1, cadena2, aux;		
	public static int longitud;
	public String resultado = "";
	public String arreglo[];
	public int apuntador = 1;	//Simula el cabezal apuntador de la Máquina de turing
	public static BufferedReader reader;

	//El constructor del objeto te muestra la cadena ingresada
	public Resta(){
		System.out.println("Cadena: "+cadena1); 
		decodificar(cadena1);
	}

	//El método decodificar se encarga de crear el arreglo que contendrá la cadena ingresada
	public void decodificar(String dec){
		cadena2 = "#"+ cadena1 +"#";
		longitud = cadena2.length();
		arreglo = new String[longitud];
		for(int i = 0; i < longitud; i++){
			arreglo[i]=""+ cadena2.charAt(i);
		}
		e0();
	}
	

	//El método e0 representa al estado 0, o estado inicial
	public void e0(){
		aux = arreglo[apuntador];
		if (aux.equals("1")){
			arreglo[apuntador] = "1";
			moverDerecha();
			e0();
		}
		else if (aux.equals("-")){
			arreglo[apuntador] = "-";
			moverDerecha();
			e1();
		}
		else if (aux.equals("#")){
			arreglo[apuntador] = "#";
			moverIzquierda();
			System.out.println("Cadena vacia");
		}else{
			rechazar(aux);
		}
			
	}


	//El método e1 representa al estado 1
	public void e1(){
		aux = arreglo[apuntador];
		if (aux.equals("1")){
			arreglo[apuntador] = "1";
			moverDerecha();
			e1();
		}
		else if (aux.equals("#")){
			arreglo[apuntador] = "#";
			moverIzquierda();
			e2();
		}
		else if (aux.equals("-")){
			incorrecto();
		}else{
			rechazar(aux);
		}
	}


	//El método e2 representa al estado 2
	public void e2(){
		aux = arreglo[apuntador];
		if (aux.equals("1")){
			arreglo[apuntador] = "#";
			moverIzquierda();
			e3();
		}
		else if (aux.equals("-")){
			arreglo[apuntador] = "#";
			moverIzquierda();
			e6();
		}
		else if (aux.equals("#")){
			incorrecto();
		}else{
			rechazar(aux);
		}
	}


	//El método e3 representa al estado 3
	public void e3(){
		aux = arreglo[apuntador];
		if (aux.equals("1")){
			arreglo[apuntador] = "1";
			moverIzquierda();
			e3();
		}
		else if (aux.equals("-")){
			arreglo[apuntador] = "-";
			moverIzquierda();
			e3();
		}
		else if (aux.equals("#")){
			arreglo[apuntador] = "#";
			moverDerecha();
			e4();
		}else{
			rechazar(aux);
		}
	}

	//El método e4 representa al estado 4
	public void e4(){
		aux = arreglo[apuntador];
		if (aux.equals("1")){
			arreglo[apuntador] = "#";
			moverDerecha();
			e0();
		}
		else if (aux.equals("-")){
			arreglo[apuntador] = "1";
			moverIzquierda();
			e5();
		}
		else if (aux.equals("#")){
			incorrecto();
		}else{
			rechazar(aux);
		}
	}

	//El método e5 representa al estado 5
	public void e5(){
		aux = arreglo[apuntador];
		if (aux.equals("#")){
			arreglo[apuntador] = "-";
			moverIzquierda();
			e6();
		}
		else if (aux.equals("-")){
			incorrecto();
		}
		else if (aux.equals("1")){
			incorrecto();
		}else{
			rechazar(aux);
		}
	}

	//El método e6 representa al estado 6
	public void e6(){
		aux = arreglo[apuntador];
		if (aux.equals("1")){
			arreglo[apuntador] = "1";
			moverIzquierda();
			e6();
		}
		else if (aux.equals("#")){
			arreglo[apuntador] = "#";
			moverDerecha();
			e7();
		}
		else if (aux.equals("-")){
			incorrecto();
		}else{
			rechazar(aux);
		}
	}

	//El método e7 representa al estado 7, el estado de aceptación
	public void e7(){

		for(int i = 0; i < longitud; i++){
			if(arreglo[i].equals("#")){}
			else{
				resultado = resultado+arreglo[i];
			}
		}
		if(resultado.equals("")){
			System.out.println("El resultado de: "+ cadena1 +" es: 0");
		}else
			System.out.println("El resultado de: "+ cadena1 +" es: "+ resultado);
	}



	//Mueve el puntero de la MT a la derecha
	public void moverDerecha() {
		apuntador++;
	}
	
	//Mueve el puntero de la MT a la izquierda
	public void moverIzquierda() {
		apuntador=apuntador-1;
	}

	//Si entra en este estado, significa que se encontró un caracter no válido
	public void rechazar(String noval) {
		System.out.println("Caracter no valido: "+ noval);
	}

	//Si entra en este estado, significa la sintaxis de la resta es incorrecta
	public void incorrecto() {
		System.out.println("Sintaxis incorrecta");
	}



	//Pide la resta y la guarda en la variable cadena
	public static void main(String args[]) {
		System.out.println("Ingrese la resta: ");
		try{
			reader = new BufferedReader(new InputStreamReader(System.in));
			cadena1 = reader.readLine();
		}catch(IOException e){
			e.getMessage();
		}

		Resta obj = new Resta();
	}
}
