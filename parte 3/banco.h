//banco.h


#include "usuario.h"
#include <iostream>
#include <string>


#ifndef BANCO_H
#define BANCO_H


using namespace std;

class Banco:public Usuario{
	public:
		Banco(string, string, string, string);
		string getEmail()const;
		string getSenha()const;
		void alterarSenha(string);	
		virtual void printBanco();
	private:
		string email,senha;
};

#endif