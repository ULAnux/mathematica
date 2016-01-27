//Forked from ABB by Razeria && Pedrou C.A

/*
ABB
Developed by Razeria && Pedrou C.A 
Merida-Venezuela 2014
Made in socialism <3
*/


#ifndef ARBOLBINESPECIAL_H
#define ARBOLBINESPECIAL_H
#include <iostream>
#include <string>

using namespace std;

template <class T>

class SBT{
	
	public:
	//protected:

	template <class T1>
	class Node{

		public:
	
		T1 data;
		Node<T1> *Rson;
		Node<T1> *Lson;

		
		Node(): Rson(NULL), Lson(NULL){};
		Node(T1 dat): data(data), Rson(NULL), Lson(NULL){};

	void insertLson(const T ele){

		
		Node<T> *newnode;
		
		newnode= new Node<T>;

		this->Lson=newnode;
		this->Lson->data=ele;
	
		
	
	};

	void insertRson(const T ele){

		Node<T> *newnode;
		newnode= new Node<T>;
		this->Rson=newnode;
		this->Rson->data=ele;
		
	};
	
	Node<T>* getLson(){

		return this->Lson;
		
	
	};

	Node<T>* getRson(){

		return this->Rson;
		
	
	};
	
	};

		Node<T> *root;
		Node<T> *current;
		int nodes;
		int height;


	

	public:

	SBT(): root(NULL), nodes(0), height(0), current(NULL){};

	~SBT(){if(root!=NULL) cutFrom(root);};
	
	bool Empty(Node<T> *nod){ return nod==NULL;}

	void insertElem(const T ele){

		Node<T> *p;
		int cont;
		Node<T> *newnode;

		if(root==NULL){

			newnode= new Node<T>;
			newnode->data=ele;
			root=newnode;
			nodes=1;

		}
		else{

		current=root;

		while(current!=NULL){

			p=current;
			if(current->data > ele)
			{
				cont=1;
				current=current->Lson;
	
			}
			else
			{
	
				if(current->data < ele){
					cont=2;
					current=current->Rson;
	
				}
				else{
	
					return;//no puede insertar otro elemento igual
	
				}
	
			}
				
	
	
		}
	
		
		newnode=new Node<T>;
		newnode->data=ele;
		if(cont==1)
			p->Lson=newnode;
		if(cont==2)
			p->Rson=newnode;
		nodes++;
		if (cont>height)
			height=cont;
	
		}
		
	
	};

	bool isEmpty(Node<T> *r){return r==NULL;};
	
	Node<T>* searchElem(const T ele){

	if(root==NULL){

			return NULL;

		}
		else{

		current=root;

			while(current!=NULL){

				if(current->data > ele)
				{

					current=current->Lson;
	
				}
				else
				{
	
					if(current->data < ele){
	
						current=current->Rson;
	
					}
					else{
	
						return current;//lo encontro
	
					}
	
				}
				
			
	
			}

			return NULL;
		}

	

	};
	
	int nNodesFrom(Node<T> *n){

		if(n==NULL) return 0;
		
		int retvalue=0;
				
   		if(n->Lson!=NULL){ cout << "e" << endl;retvalue+=nNodesFrom(n->Lson);};
   		
   		if(n->Rson!=NULL) retvalue+=nNodesFrom(n->Rson);

		return retvalue;

	};


	int nNodes(){

		return nodes;

	};

	int Height(Node<T> *nod)
	{
		if (nod == NULL){return 0;}
		
		int left = Height(nod->Lson);
		int right = Height(nod->Rson);

		if (left > right)
			return 1 + left;
		else
			return 1 + right; 
	};

	int heightFromRoot()
	{
		return (Height(root));
	};

	string inOrder(Node<T> *nod)
	{
		string aux; 
		if(nod!=NULL)
		{
			inOrder(nod->Lson);
			aux+= nod->data; 
			//cout << nod->data << " ";
			inOrder(nod->Rson);  
		}

		return aux; 

	}

	string preOrder(Node<T> *nod)
	{
		string aux; 
		if(nod != NULL)
		{
			aux += nod->data; 
			//cout << nod->data << " ";
			preOrder(nod->Lson);
			preOrder(nod->Rson);
		}
		
		return aux; 
	}

	string postOrder(Node<T> *nod)
	{
		string aux; 
		if(nod != NULL)
		{
			postOrder(nod->Lson);
			postOrder(nod->Rson);
			aux += nod->data; 
			//cout << nod->data << " ";
		}
	
		return aux; 
	};


	void PrintInOrder(){ 

		printInOrder(root);
		
	};
	void printPostOrder(){ cout << "Post Order: " << postOrder(root) << endl;};
	void PrintPreOrder(){ printPreOrder(root);};

	bool deleteNode(const T d)
	{
		
		Node<T> *current; 
		Node<T> *nod; 
		Node <T> *newnode;
		Node<T> *predecessor = new Node<T>; 
		int found = 0; 

		newnode=predecessor;

		current = root; 

		while(!isEmpty(current))
		{

			
			if(d == current->data)
			{
				
				//CasoHermoso: Hoja o Raiz sin Ramas ni hojas
				if ((current->Lson == NULL) && (current->Rson == NULL))
				{
					
					if(predecessor!=NULL && predecessor->Lson == current)
						predecessor->Lson = NULL;
					if(predecessor!=NULL && predecessor->Rson == current)
						predecessor->Rson = NULL; 

					delete current;
					delete newnode;
					return true; 
					
				}

				found = 1; 
				break; 					
			}
			else
			{
				predecessor=current;
				if (d > current->data)
				{
					
					current = current->Rson;
				}
				else
				{
					
					current = current->Lson;
				}
			}	
		}
		if (found == 1)
		{
			if ((predecessor->Lson==NULL)&&(predecessor->Rson==NULL)) 
           		 {
             		   if((current->Lson == NULL)&&(current->Rson !=NULL))
         		       {
            		        root = current->Rson; 
           		         delete current; 
				 delete newnode;
        		         return true; 
       		         	}
       		         else
      		          	{
      		              	if((current->Lson != NULL)&&(current->Rson == NULL))
      		             	{
      		             	     root = current->Lson; 
        		                delete current; 
					delete newnode;
        		                return true; 
       		            	}
       		           	 else
        	           	 {
                	      	  if ((current->Lson != NULL)&&(current->Rson != NULL))
                       		 {
                           		nod = current->Rson;
                        		if (nod -> Lson == NULL)
                           		{
                            			root = nod;
						nod->Lson = current->Lson;
 
                              			delete current; 
						delete newnode;
                               			return true;   
                          		 }
 
                           		while(nod-> Lson != NULL)
                         		{
                            			predecessor = nod; 
                             			nod = nod->Lson;
                            		}
     
                          		current->data = nod->data; 
                           		predecessor->Lson = NULL;
                           		delete nod;
					delete newnode; 
                            		return true; 
 				 }
                	    }
                	} 
            		}	
			//Caso2: Ramas
			else
			{
				if ((current->Lson == NULL) && (current->Rson != NULL))
				{
					if(predecessor->Lson == current)
						predecessor->Lson = current->Rson;
					else
						predecessor->Rson = current->Rson; 

					delete current;
					delete newnode; 
					return true; 
	
				}
				else
				{
					if ((current->Lson != NULL )&&( current->Rson == NULL))
					{
						if(predecessor->Lson == current)
							predecessor->Lson = current->Lson;
						else
							predecessor->Rson = current->Lson; 

						delete current;
						delete newnode; 
						return true; 
					}
					else
					{
					     	  if ((current->Lson != NULL)&&(current->Rson != NULL))
                       				 {
                           				nod = current->Rson;
                        				if (nod -> Lson == NULL)
                           				{
                            					 if(predecessor->Lson == current)
                                 				  predecessor->Lson = nod;
                             				 else
                               					  predecessor->Rson = nod;
 
                               					 nod->Lson = current->Lson;
                              					 delete current;
								 delete newnode; 
                               					 return true;   
                          				 }
 
                           				while(nod-> Lson != NULL)
                         				{
                            					predecessor = nod; 
                             					nod = nod->Lson;
                            				}
     
                          				current->data = nod->data; 
                           				predecessor->Lson = NULL;
                           				delete nod;
							delete newnode; 
                            				return true; 
 						 }					
					}
				}
			}		
		}

		else
		{
		delete newnode;		
		return false;
		}	
	}


	private:

		void printInOrder(Node<T>* nod){ 

			if(nod!=NULL)
			{
				printInOrder(nod->Lson);
				cout << nod->data << " ";
				printInOrder(nod->Rson);  
			}	
			return;
		
		};
		void printPreOrder(Node<T> *nod)
		{
		
			if(nod != NULL)
			{
				cout << nod->data << " ";
				printPreOrder(nod->Lson);
				printPreOrder(nod->Rson);
			}
		
		}
		void cutFrom(Node<T> *c){
		if(c->Rson!=NULL)
		cutFrom(c->Rson);
		if(c->Lson!=NULL)
		cutFrom(c->Lson);

		delete c;

		};
};

#endif

						
