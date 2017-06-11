//usuario.cpp

#include "usuario.h"

using namespace std;

Usuario :: Usuario (string name, string date) :nome(name), dataNascimento(date){};

string Usuario::getNome()const{
	return nome;
};

string Usuario:: getDataNascimento()const{
	return dataNascimento;
};


 void Usuario:: printUsuario(){
	cout<<"Nome:"<<nome<<"\n"<<"Data de nascimento:"<<dataNascimento<<"\n";
};