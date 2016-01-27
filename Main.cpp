//Para compilar $ g++ Main.cpp -o main
//Para ejecutar $ ./main
#include <iostream>
#include "abe.h"
#include <fstream>

void X(SBT<int>::Node<int>* root,int n ){
	
	
	if(n>0){

	root->insertLson(0);
	
	root->insertRson(1);
	X(root->getLson() , n-1);
	X(root->getRson(), n-1);	

	}
	return;

}

void Y(SBT<int>::Node<int>* root,int n, int A[], int B[], int m){

	if(root->getLson()!=NULL){

	A[n-1]=root->getLson()->data;
	Y(root->getLson(), n-1, A, B, m);
	A[n-1]=root->getRson()->data;
	Y(root->getRson(), n-1, A, B, m);

	}

	else{

		int b=0;
		cout << "{";
		for(int i=0; i<m ; i++){

			if(A[i]==1 && b==1)
				cout<< ", " << B[i];
			if(A[i]==1 && b==0){
				b=1;
				cout<<  B[i];
			}

		}

		cout << "}" << endl;

	}

}

void SubConj(int B[], int n){

	SBT<int>::Node<int>* node;
	node= new SBT<int>::Node<int>;

	X(node, n);
	int A[n];
	Y(node, n, A, B, n);

}

int main(){
	
	int n;
	cout << "Determine el tamaño del conjunto (hasta ahora el conjunto solo permite elementos enteros)." << endl;
	cin >> n;
	int B[n];
	for (int i=0; i<n ; i++){

		cout << "Inserte el elemento numero " << i+1 << " del conjunto." << endl;
		cin >> B[i];	
	
	}
	SubConj(B,n);	
	
	return 0;

}
