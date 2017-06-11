//Banco.cpp

#include "banco.h"
#include <iostream>
#include <string>

using namespace std;

Banco::Banco(string n, string d, string e, string s) : Usuario( n, d ), email(e), senha(s) {};

string Banco::getEmail() const{
	return email;
};

string Banco::getSenha()const{
	return senha;
};


void Banco::alterarSenha(string s){
	senha = s;
};


void Banco:: printBanco(){
	printUsuario();
	cout<<"Login:"<<getEmail()<<"\n"<<"Senha:"<<getSenha()<<"\n";
};