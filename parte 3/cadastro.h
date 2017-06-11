//cadastro.h

#include <iostream>
#include <string>
#include "usuario.h"


#ifndef CADASTRO_H
#define CADASTRO_H


using namespace std;

class Cadastro:public Usuario{
	public:
		Cadastro(string, string,string, string);
		string getLogin() const;
		string getSenha() const;
		void alterarSenha(string);		
		virtual void printCadastro();
	private:
		string login, senha;
};

#endif
