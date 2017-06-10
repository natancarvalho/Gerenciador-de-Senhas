/*trabalho lig prog

- cadastrar usuários com nome completo, data de nascimento, login e senha;
- criar um arquivo para cada usuário que irá armazenar os emails e suas respectivas senhas a serem administradas;
- o arquivo de emails e senhas será entitulado com um hash em sha* da senha cadastrada para login do usuário;
- o programa irá buscar o nome do usuário, caso não encontre será exibido a mensagem "usuário não cadastrado". caso encontre,
  irá buscar o arquivo contendo os emails/senhas cadastrados corresponde ao hash da senha de login;
- após o login, o usuário poderá iserir, excluir e alterar email/senha, buscar uma senha referente a um email e avaliar as senhas;
*/

//usuário.h
class Usuario{
	public:
		Usuario(string);
		string getNome()const;
		string getDataNascimento()const;
		virtual void printUsuario(); 
	private:
		string nome, datanascimento, login, senha, verifySenha; 
};


//cadastro.h
class Cadastro:public Usuario{
	public:
		Cadastro(string, string);
		string getEmail() const;
		virtual void print();
		string getSenha();
		Cadastro * alterarSenha();		
	private:
		string email, senha;
};

//arquivo.h

#include "cadastro.h"
#include "usuario.h"

class Arquivo{
	public:
		Arquivo();
		arquivo * insere(Usuario);
		arquivo * remove(string);
		Usuario * busca(string);
		Usuario * busca(int);			
	private:
	vector <Usuario *> arquivo;
};
