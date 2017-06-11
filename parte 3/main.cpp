#include <iostream>
#include <string>
#include <iomanip>

#include "arquivo.h"
#include "banco.h"
#include "cadastro.h"
#include "erros.h"
#include "usuario.h"

using namespace std;

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main() {
	string nome;
	string dataNascimento;
	string nascimentoSoDigitos;
	int indiceNascimento = 0;
	int indiceNome = 0;
	
	cout << "Digite seu nome: ";
	getline (cin, nome);
	
	/*-------Tratamento da entrada "Nome do usuário"---------------------*/
	if (nome.length() > 30){
		nome = nome.substr (0, 20);
		cout << "Nome truncado para: " << nome << endl;
	}
	  
	
  for (indiceNome = 0; indiceNome < nome.length(); indiceNome++){
		if (isdigit(nome[indiceNome])  || !isprint(nome[indiceNome]) || ispunct(nome[indiceNome])){
			cout << "Entrada invalida " << nome[indiceNome] << endl;
			cout << "Use somente letras sem acentuacao:" << endl;
			exit (ERRO_NOME_USUARIO);
		}
	}
	/*------------------------------------------------------------------*/
		
	cout << "Data de nascimento: ";
	cin >> dataNascimento;
	
	/*-----------------Tratamento da entrada "Nome do usuário"---------------------*/
	for (indiceNascimento = 0; indiceNascimento < dataNascimento.length(); indiceNascimento++){
		if (!isdigit(dataNascimento[indiceNascimento]) && dataNascimento[indiceNascimento] != '/'){
		  cout << "Entrada invalida: " << dataNascimento[indiceNascimento] << endl;
		  exit(ERRO_NASCIMENTO);
	  }
	  
		if (!isdigit(dataNascimento[indiceNascimento]))
			dataNascimento.erase(indiceNascimento,1);
	}
	/*-----------------------------------------------------------------------------*/
		 
	cout << "\nNome digitado: " << nome << endl;
	cout << "Data de nascimento: " << dataNascimento << endl;
		
	return 0;
}
