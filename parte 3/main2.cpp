#include <iostream>
#include "buscaUsuario.h"
#include "funcoes.h"

using namespace std;

int main(){
	string achado;
	string nome;
	
	cout << "Nome de usuario: ";
	cin >> nome;
	
	achado = buscaUsuario (nome);
	cout << "Nome encontrado:" << achado << endl;
	
	return 0;
}
