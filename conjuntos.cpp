/*Jesus Eduardo Nuñez Garcia
V-021182155
Matematicas discretas. Prof. Jacinto Davila

Union de conjuntos*/

#include <iostream>
#include <list>

using namespace std;

int main(){
	
	list<int> a,b,c; //Defino tres conjuntos

	a.push_front(1); //1 pertenece al conjunto a
	b.push_front(2); //2 pertenece al conjunto b
	c.push_front(3); //3 pertenece al conjunto c

	cout << "Conjunto de a:{";
	for(list<int>::iterator it=a.begin(); it!=a.end();++it)
		cout << *it;
	cout << '}' << endl;

	cout << "Conjunto de b:{";
	for(list<int>::iterator it=b.begin(); it!=b.end();++it)
		cout << *it;
	cout << '}' << endl;

	cout << "Conjunto de c:{";
	for(list<int>::iterator it=c.begin(); it!=c.end();++it)
		cout << *it;
	cout << '}' << endl;

	//Union entre el conjunto a y b
	cout << "Union del conjunto a y b:{";
	a.merge(b);
	for(list<int>::iterator it=a.begin(); it!=a.end();++it){
		cout << *it << ' ';
	}
	cout << '}' << endl;
	
	b.push_front(a.back()); //inserto el numero 2 en el conjunto b 
	a.pop_back(); //elimino el numero 1

	//Union entre el conjunto b y c
	cout << "Union del conjunto b y c:{";
	b.merge(c);
	for(list<int>::iterator it=b.begin(); it!=b.end();++it)
		cout << *it << ' ';
	cout << '}' << endl;

	c.push_front(b.back()); //inserto el numero 3 en el conjunto c 
	b.pop_back(); //elimino el numero 2

	//Union entre el conjunto a y c
	cout << "Union del conjunto a y c:{";
	a.merge(c);
	for(list<int>::iterator it=a.begin(); it!=a.end();++it)
		cout << *it << ' ';
	cout << '}' << endl;
	
	c.push_front(a.back()); //inserto el numero 3 en el conjunto c 
	a.pop_back(); //elimino el numero 1

	//Union entre los conjunto a, b y c
	cout << "Union entre los conjunto a, b y c:{";
	a.merge(c);
	a.merge(b);

	for(list<int>::iterator it=a.begin(); it!=a.end();++it)
		cout << *it << ' ';
	cout << '}' << endl;

	c.push_front(a.back()); //inserto el numero 3 en el conjunto c 
	a.pop_back(); //elimino el numero 1

	b.push_front(a.back()); //inserto el numero 3 en el conjunto c 
	a.pop_back(); //elimino el numero 2

	//libero memoria.

	a.pop_front();
	b.pop_front();
	c.pop_front();

	return 0;
}
