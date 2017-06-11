#include "cadastro.h"

using namespace std; 

Cadastro::Cadastro(string n, string d, string l, string s): Usuario(n,d), login(l), senha(s) {};

string Cadastro::getLogin() const{
	return login;
};

string Cadastro::getSenha()const{
	return senha;
};


void Cadastro::alterarSenha(string s){
	senha = s;
};

void Cadastro:: printCadastro(){
	printUsuario();
	cout<<"Login:"<<getLogin()<<"\n"<<"Senha:"<<getSenha()<<"\n";
};