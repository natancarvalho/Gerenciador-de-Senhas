package funcoes;

use strict;
use warnings;

our @EXPORT_OK = qw(checkBirthday numericCharacters lowerCaseCharacters upperCaseCharacters specialCharacters checkName);

sub checkBirthday {
  my @nascimento = $_[1];
  print "nascimento local :";
  print $nascimento [0];
  my @senha = $_[0];
  print "senha local :@senha\n";
  if (index($senha [0], $nascimento [0]) != -1){
    print "Senha utliza a data de nascimento\n";
    return 1;
  }
} 


sub numericCharacters{
	my $classificacao;
        my @senha = @_;
	if($senha [0] =~ /\d/){
	#	print "Tem numeros\n";
          $classificacao = 1;
          return $classificacao;
	}

}

sub lowerCaseCharacters{
	my $classificacao;
	my @senha = @_;
	if($senha [0]  =~ /[a-z]/){
         #       print "Tem letras minusculas\n";
           return $classificacao = 1;
	}
}

sub upperCaseCharacters{
        my $classificacao;
        my @senha = @_; 
	if($senha [0]  =~ /[A-Z]/){
	#	print "Tem letras Maisculas\n";
          return $classificacao = 1;
	}
}

sub specialCharacters{
        my $classificacao;
        my @senha = @_;
	if($senha [0]  =~ /[!@#\$\%~^|&*_+]/){
	#	print "Tem special\n";
          return $classificacao = 2;   
	}
}

sub checkName{
  my @nome = $_[1];
  #print $nome [0];
  my @senha = $_[0];
  my $bool =0;
  if (index($senha [0], $nome [0]) != -1){
    #print "Senha utliza o nome\n";
    return $bool=1;
  }
}

1;