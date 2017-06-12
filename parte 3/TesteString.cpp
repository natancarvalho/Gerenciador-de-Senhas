#include <iostream>
#include <fstream> // file stream
#include <iomanip>
#include <string>
#include <cstdlib>
#include <vector>

using namespace std;

int main (){
  int i=0,posicao, tamanho, encontrarNome, numeroLinhas = 0;
  string str, nome, dataNascimento, nomeEncontrado;
  int find = 0;
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
    /*if (str == "natan"){
    	cout << "Nome encontrado: " << str << endl;
		}*/
		//cout << lista [i]<< endl;
		i++;
    numeroLinhas++;
  }
	
	
	for (int j = 0; j < lista.size(); j++){
		string teste = lista[j];
		
		posicao = teste.find(";", 0);
    nome = teste.substr(0, posicao);
    //cout << nome << endl;         // imprime "teste"

    tamanho = posicao+1;
    posicao = teste.find(";", posicao+1);
    dataNascimento =  teste.substr(tamanho, posicao-tamanho);
    //cout << dataNascimento << endl;   // imprime "teste1" */
    cout << nome << endl;
		
		//cout << teste;
		if (!nome.compare("carvalho")){
			cout << nome << "ss"<< endl;
			break;
		}	
	}
	//cout << lista [0]<< endl;
	//lista[i+1] = '\0';
	//cout << str << endl;
	arquivo.close();
	//cout << "Linhas lidas: " << numeroLinhas << endl;
  
  //else cout << "Arquivo nao pode ser aberto !" << endl;
   
  

  return 0;
}
