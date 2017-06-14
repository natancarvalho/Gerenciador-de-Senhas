#include <iostream>
#include <fstream> // file stream
#include <iomanip>
#include <string>
#include <cstdlib>
#include <vector>

#include "funcoes.h"

using namespace std;

string buscaUsuario (string nome){
	int i=0;
	int posicao; 
	int tamanho; 
	int encontrarNome;
	int numeroLinhas = 0;
  string str;
  string dataNascimento;
	string nomeEncontrado;
  vector <string> lista;
  
  ifstream arquivo("Users.csv");
  
  arquivo.is_open();

 	// exit program if unable to create file
	if (!arquivo) {// overloaded ! operator
		cerr << "File could not be opened" << endl;
		exit(1);
	} // end if

  while (! arquivo.eof()){
    getline (arquivo, str);
    lista.push_back(str);
		i++;
    numeroLinhas++;
  }
	
	for (int j = 0; j < lista.size(); j++){
		string teste = lista[j];
		posicao = teste.find(";", 0);
    nome = teste.substr(0, posicao);

    tamanho = posicao+1;
    posicao = teste.find(";", posicao+1);
    dataNascimento =  teste.substr(tamanho, posicao-tamanho);

		if (!nome.compare("segunda-feira")){
			cout << nome << "ss"<< endl;
			cout << "Linha:" << j + 1 << endl; //caso queira saber a linha em que o nome se encontra; o indice do vetor é j - 1;
			break;
		}
	}//end for
	
	arquivo.close();
	cout << "Linhas lidas: " << numeroLinhas << endl;
  
  return nome;
}
