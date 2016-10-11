// Andrés Trejo
// Buscador de pr en archivos .pl
// Alpha version 1.0 
// 15/02/2016

import java.io.*;
import java.util.*;
import java.util.regex.*;

class PrologReader extends LevenshteinDistance {
	
	public static void main(String[] args) {
		
		outerloop:
		for(int i = 0; i < 28; i++) {
			try {
				//Loop que abre y procesa los .pl disponibles
				File file = new File("00"+(String.format("%02d",i))+".pl");
				BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file), "UTF8"));
				String line;
				ArrayList<String> prArray = new ArrayList<String>();
				//System.out.println("File: "+"00"+(String.format("%02d",i))+".pl"); "Imprime en pantalla el nombre del archivo abierto"
				
				while((line = bufferedReader.readLine()) != null) {
					if(line.startsWith("pr(")) { //La linea del archivo debe empezar por "pr(" para ser considerada útil
						prArray = prParser(line);
						if((getDistance(args[0], prArray.get(0))) > 0.78 ){
							System.out.println("La respuesta es: " + "\n" + prArray.get(1));
							/* El texto ingresado se compara con la pregunta contenida en la pr actual. Si su similitud es igual o mayor al 78% (porcentaje que puede ser modificado) la respuesta se imprime en pantalla y el programa termina su ejecución.
							*/
							break outerloop;
						}
					}
				}
				bufferedReader.close();
			} catch (IOException e) {
				e.printStackTrace(); //Exception utilizada para señalar errores de apertura o procesamiento de archivos.
			}
		}
	}
	
	public static ArrayList<String> prParser(String pr) {
		Matcher matcher = Pattern.compile("(?<=\\[).*?(?=\\])").matcher(pr); //Extrae la información de los pr utilizando expresiones regulares
		
		ArrayList<String> arrayList = new ArrayList<String>();
		
		while(matcher.find()) {
			String aux = matcher.group(0);
			arrayList.add(aux);
		}
		/* Devuelve un Array que contiene las string asociadas a la pregunta y respuesta de la pr y tambien información adicional entre corchetes como Autor, comentarios, citas, etc.
		*/
		return arrayList;
	}
}

//FileReader fileReader = new FileReader(file);
//BufferedReader bufferedReader = new BufferedReader(fileReader);