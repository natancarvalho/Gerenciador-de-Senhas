//arquivo.h

#include "usuario.h"
#include "cadastro.h"
#include "banco.h"
#include <iostream>
#include <string>
#include <vector>

#ifndef	ARQUIVO_H
#define	ARQUIVO_H

class Lista{
public:
		Lista(Usuario *);
		void insere(Usuario *);
		void remove(string);
		int busca(string);
	private:
	vector <Usuario *> lista;
	int posicaoLivre;
};

#endif