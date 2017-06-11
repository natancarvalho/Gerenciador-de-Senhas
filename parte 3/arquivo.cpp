//arquivo.cpp

#include "arquivo.h"

using namespace std;

Lista::Lista(Usuario *u){
	insere (u);
};

void Lista::insere(Usuario *u){
	lista.push_back(u);
};

void Lista::remove(string s){
	int ind1, ind2;
	ind1 = busca(s);	
	ind2 = ind1 + 1;
	for(ind2; ind2<lista.size();ind2++){
		lista[ind1]=lista[ind2];
		ind1++;
	}
	ind2= lista.size() -1;
	lista.resize(ind2);
};

int Lista::busca(string s){
	int ind=2;
	for(ind; ind<lista.size(); ind++){
		if(lista[ind]->getNome().compare(s)){
			return ind;
		}
	}
	return -1;
};