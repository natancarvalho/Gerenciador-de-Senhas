// Fig. 17.4: Fig17_04.cpp
// Create a sequential file.
#include <iostream>
#include <string>
#include <fstream> // file stream
#include <cstdlib>

using namespace std;

int main(){
	// ofstream constructor opens file
  ofstream outClientFile( "clients.csv", ios::app );

	// exit program if unable to create file
	if (!outClientFile ) {// overloaded ! operator
		cerr << "File could not be opened" << endl;
		exit( 1 );
	} // end if
	
	cout << "Enter the account, name, and balance." << endl
	  << "Enter end-of-file to end input.\n? ";
	  
	int account;
	string name;
 	double balance;
 	
 	// read account, name and balance from cin, then place in file
	while (cin >> account >> name >> balance ){
		outClientFile << account << ' ' << name << ' ' << balance << endl;
		cout << "? ";
	} // end while
	
} // end main

/*Quando eu uso outClienteFile << account << ';' << ... o programa de leitura não exibe nada, mas do jeito que esta funciona. 
porém, não e o formato que a gente deseja pra arquivo. Escrever ta ok, ler que é o problema.*/

