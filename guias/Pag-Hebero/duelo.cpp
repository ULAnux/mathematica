#include <iostream>
using namespace std;

int total=0, total2 =0;
int main() {
	int puntos1 = 200, puntos2= 300, aux1 =0, aux2=0, i=0;
	cin>>i;
	 while(i < 2){
	char aux;
	char a = 'a';
	char b = 'b';
	char c = 'c';
	char d = 'd';
	
	//Pregunta 1   
	cout << "Sean A = {1, 2, 3, 4}, B = {3, 4, 5, 6, 7} Entonces A u B =" <<endl;
	cout << "a){1, 2, 3, 4, 5, 6, 7}   b){1, 2, 3, 4, 8, 9}" <<endl; 
	cout << "b) {3, 4}                 d){2, 3, 4, 5, 6, 7}" <<endl; 
	cin>>aux;
	if (aux == a){
		cout << "Correcto" <<endl; 
		total = total +10;
	}
	if(aux != a){
	 cout<< "Fallaste La respuesta es la opcion a {1, 2, 3, 4, 5, 6, 7}" << endl;
	}
	cout << " " <<endl;	
	cout << " " <<endl;
	//Pregunta 2
	cout << "Las rosas son rojas y las violetas son azules” y “Juan es inteligente o estudia cada noche” Son Proposiciones compuestas" <<endl;
	cout << "a)Verdadero   b)Falso" <<endl; 
	cin>>aux;
	if (aux == a){
		cout << "Correcto" <<endl;
		total = total +10;
	}
	if(aux != a){
		cout<< "Fallaste la respuesta es Verdadero" << endl;
	}
	cout << " " <<endl;	
	cout << " " <<endl;
	//Pregunta 3   
	cout << "Considere las cuatro proposiciones siguientes: "<< endl;
	cout <<	"a) China está en Europa y 2 + 2 = 4        b) El hielo flota en el agua y 2 + 2" << endl;
	cout << "c) El hielo flota en el agua y 2 + 2 = 5   d) China está en Europa y 2 + 2 = 5" << endl;
	cin>>aux;
	if (aux == b){
		cout<< "Correcto" << endl;
		total = total +10;
	}
	if(aux != b){
		cout<< "Sólo la proposición b es verdadera. Cada una de las otras es falsa puesto que por lo menos una de sus subproposiciones es falsa." << endl;
	}
	cout << " " <<endl;	
	cout << " " <<endl;
	//Pregunta 4
	cout << "Suponga que en una universidad se imparten 3 cursos diferentes de historia, 4 cursos diferentes de literatura y 2 cursos diferentes de sociología. Cual es el número de formas en que los estudiantes pueden escoger un curso de cada área" <<endl;
	cout << "a) 9     b)28" <<endl; 
	cout << "c) 24    d)19" <<endl;
	cin>>aux;
	if (aux == c){
		cout << "Correcto" << endl;
		total = total +10;
	}
	if(aux != c){
		cout<< "Falso, por la regla de la multiplicacion la respuesta es 24, m = 3(4)(2) = 24" << endl;
	}
	cout << " " <<endl;	
	cout << " " <<endl;
		
		//Pregunta 5
		cout << "Cual es el número m de palabras de siete letras que pueden formarse con las letras de la palabra “BENZENE”." <<endl;
	cout << "a)5040       b)49" <<endl; 
	cout << "c) 84    d)420" <<endl;
	cin>>aux;
	if (aux == d){
		cout << "Correcto" << endl;
		total = total +10;
	}
	if(aux != d){
		cout << "Falso, Se busca el número de permutaciones de 7 objetos, de los cuales 3 son iguales" << endl;
		cout <<"(las tres letras E) y 2 son iguales (las dos letras N) por tanto P(7; 3, 2) = 420 " << endl;
	}
	cout << " " <<endl;	
	cout << " " <<endl;
	
	cout << " Total de Puntos "<< total<< endl;
	i++;
	 }
	 cin>>i;
	 while(i < 2){
		 char aux;
		 char a = 'a';
		 char b = 'b';
		 char c = 'c';
		 char d = 'd';
		 
		 //Pregunta 1   
		 cout << "Sean A = {1, 2, 3, 4}, B = {3, 4, 5, 6, 7} Entonces A u B =" <<endl;
		 cout << "a){1, 2, 3, 4, 5, 6, 7}   b){1, 2, 3, 4, 8, 9}" <<endl; 
		 cout << "b) {3, 4}                 d){2, 3, 4, 5, 6, 7}" <<endl; 
		 cin>>aux;
		 if (aux == a){
			 cout << "Correcto" <<endl; 
			 total2 = total2 +10;
		 }
		 if(aux != a){
			 cout<< "Fallaste La respuesta es la opcion a {1, 2, 3, 4, 5, 6, 7}" << endl;
		 }
		 cout << " " <<endl;	
		 cout << " " <<endl;
		 //Pregunta 2
		 cout << "Las rosas son rojas y las violetas son azules” y “Juan es inteligente o estudia cada noche” Son Proposiciones compuestas" <<endl;
		 cout << "a)Verdadero   b)Falso" <<endl; 
		 cin>>aux;
		 if (aux == a){
			 cout << "Correcto" <<endl;
			 total2 = total2 +10;
		 }
		 if(aux != a){
			 cout<< "Fallaste la respuesta es Verdadero" << endl;
		 }
		 cout << " " <<endl;	
		 cout << " " <<endl;
		 //Pregunta 3   
		 cout << "Considere las cuatro proposiciones siguientes: "<< endl;
		 cout <<	"a) China está en Europa y 2 + 2 = 4        b) El hielo flota en el agua y 2 + 2" << endl;
		 cout << "c) El hielo flota en el agua y 2 + 2 = 5   d) China está en Europa y 2 + 2 = 5" << endl;
		 cin>>aux;
		 if (aux == b){
			 cout<< "Correcto" << endl;
			 total2 = total2 +10;
		 }
		 if(aux != b){
			 cout<< "Sólo la proposición b es verdadera. Cada una de las otras es falsa puesto que por lo menos una de sus subproposiciones es falsa." << endl;
		 }
		 cout << " " <<endl;	
		 cout << " " <<endl;
		 //Pregunta 4
		 cout << "Suponga que en una universidad se imparten 3 cursos diferentes de historia, 4 cursos diferentes de literatura y 2 cursos diferentes de sociología. Cual es el número de formas en que los estudiantes pueden escoger un curso de cada área" <<endl;
		 cout << "a) 9     b)28" <<endl; 
		 cout << "c) 24    d)19" <<endl;
		 cin>>aux;
		 if (aux == c){
			 cout << "Correcto" << endl;
			 total2 = total2 +10;
		 }
		 if(aux != c){
			 cout<< "Falso, por la regla de la multiplicacion la respuesta es 24, m = 3(4)(2) = 24" << endl;
		 }
		 cout << " " <<endl;	
		 cout << " " <<endl;
		 
		 //Pregunta 5
		 cout << "Cual es el número m de palabras de siete letras que pueden formarse con las letras de la palabra “BENZENE”." <<endl;
		 cout << "a)5040       b)49" <<endl; 
		 cout << "c) 84    d)420" <<endl;
		 cin>>aux;
		 if (aux == d){
			 cout << "Correcto" << endl;
			 total2 = total2 +10;
		 }
		 if(aux != d){
			 cout << "Falso, Se busca el número de permutaciones de 7 objetos, de los cuales 3 son iguales" << endl;
			 cout <<"(las tres letras E) y 2 son iguales (las dos letras N) por tanto P(7; 3, 2) = 420 " << endl;
		 }
		 cout << " " <<endl;	
		 cout << " " <<endl;
		 
		 cout << " Total de Puntos "<< total2<< endl;
		 i++;
	 }
	 
	 if(total >total2){
	 cout << " Usuario2 a Ganado, como recompensa obtine 50 vidas" << endl;
	 }
	 
	 if(total <total2){
		 cout << "Usuario2 a Ganado, como recompensa obtine 50 vidas" << endl;
	 }
	 
	return 0;
}

/*	
int duelo(){
	char aux;
 //Pregunta 1   
	cout << "suma de 2+2" <<endl;
	cout << "a) 4    b)6" <<endl; 
	cout << "a) 2    b)5" <<endl; 
	cin>>a;
	if (aux == 'a')
		total = total +1;
/*	
	//Pregunta 2   
	cout <<  <<endl;
	
	if (aux == 'c')
		total = total +1;
	
	//Pregunta 3   
	cout <<  <<endl;
	
	if (aux == 'b')
		total = total +1;

	//Pregunta 4   
	cout <<  <<endl;
	
	if (aux == 'a')
		total = total +1;

	//Pregunta 5   
	cout <<  <<endl;
	
	if (aux == 'd')
		total = total +1;
	
return aux;
}
*/
