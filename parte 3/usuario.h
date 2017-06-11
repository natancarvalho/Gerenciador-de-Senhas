//usuário.h

#include <iostream>
#include <string>

#ifndef USUARIO_H
#define USUARIO_H

using namespace std;

class Usuario{
	public:
		Usuario (string, string);
		string getNome()const;
		string getDataNascimento()const;
		virtual void printUsuario(); 
	private:
		string nome, dataNascimento; 
};

#endif