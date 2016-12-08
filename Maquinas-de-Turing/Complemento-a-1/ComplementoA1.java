/**
  @file ComplementoA1.java
  @brief Archivo principal del programa

  @author Reinoza, José
  @version: 1.0
  @date: 21/Noviembre/2016
*/

/*La Máquina ComplementoA1 cambia de una cadena binaria ingresada todos los 1 por 0 y viceversa. Un ejemplo de entrada sería 101 devolviendo como resultado 010.*/

import java.io.InputStreamReader;
import java.io.BufferedReader;
import java.io.IOException;

public class ComplementoA1 {

	//Declaración de las variables
	public static String cadena1, cadena2, auxiliar;
	public static int longitud;
	public String complemento = "";
	public String arreglo[];
	public int apuntador = 1;	//Simula el cabezal apuntador de la Máquina de turing
	public static BufferedReader reader;

	//El constructor del objeto te muestra la cadena ingresada
	public ComplementoA1(){
		System.out.println("Cadena: "+ cadena1); 
		decodificar(cadena1);
	}

	//El método decodificar se encarga de crear el arreglo que contendrá la cadena
	public void decodificar(String dec) {
		cadena2 = "#"+ cadena1 +"#";
		longitud = cadena2.length();
		arreglo = new String[longitud];
		for(int i = 0; i < longitud; i++) {
			arreglo[i] = ""+cadena2.charAt(i);
		}
		e0();
	}
	
	//El método e0 representa al estado 0, el estado inicial
	public void e0() {
		auxiliar = arreglo[apuntador];
		if (auxiliar.equals("0")) {
			arreglo[apuntador] = "1";
			moverDerecha();
			e1();
		}
		else if (auxiliar.equals("1")) {
			arreglo[apuntador] = "0";
			moverDerecha();
			e1();
		}
		else if (auxiliar.equals("#")) {
			arreglo[apuntador] = "#";
			moverIzquierda();
			System.out.println("Cadena vacia");
		} else{
			rechazar(auxiliar);
		}
			
	}

	//El método e1 representa al estado 1
	public void e1() {
		auxiliar = arreglo[apuntador];
		if (auxiliar.equals("0")) {
			arreglo[apuntador] = "1";
			moverDerecha();
			e1();
		}
		else if (auxiliar.equals("1")) {
			arreglo[apuntador] = "0";
			moverDerecha();
			e1();
		}
		else if (auxiliar.equals("#")) {
			arreglo[apuntador] = "#";
			moverIzquierda();
			e2();
		}else{
			rechazar(auxiliar);
		}
	}

	//El método e2 representa al estado 2
	public void e2() {
		auxiliar = arreglo[apuntador];
		if (auxiliar.equals("0")) {
			arreglo[apuntador] = "0";
			moverIzquierda();
			e2();
		}
		else if (auxiliar.equals("1")) {
			arreglo[apuntador] = "1";
			moverIzquierda();
			e2();
		}
		else if (auxiliar.equals("#")) {
			arreglo[apuntador] = "#";
			moverDerecha();
			e3();
		} else{
			rechazar(auxiliar);
		}
	}

	//El método e3 representa al estado 3, el estado de aceptación
	public void e3(){

		for(int i = 1; i < longitud-1; i++) {
			complemento = complemento + arreglo[i];
		}
		System.out.println("El complemento a 1 de: "+ cadena1 +" es: "+ complemento);
	}



	//Mueve el puntero de la MT a la derecha
	public void moverDerecha() {
		apuntador++;
	}
	
	//Mueve el puntero de la MT a la izquierda
	public void moverIzquierda() {
		apuntador = apuntador-1;
	}

	//Si entra en este estado, significa que se encontró un caracter no válido
	public void rechazar(String noval) {
		System.out.println("Caracter no valido: "+ noval);
	}



	//Pide el numero binario y lo guarda en la variable cadena
	public static void main(String args[]) {
		System.out.println("Ingrese el numero binario: ");
		try{
			reader = new BufferedReader(new InputStreamReader(System.in));
			cadena1 = reader.readLine();
		} catch(IOException e){
			e.getMessage();
		}

		ComplementoA1 obj = new ComplementoA1();
	}
}
