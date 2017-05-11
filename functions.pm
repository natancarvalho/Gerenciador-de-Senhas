package funcoes;

use strict;
use warnings;

our @EXPORT_OK = qw(checkBirthday numericCharacters lowerCaseCharacters upperCaseCharacters specialCharacters checkName);


#$_ numericCharcters($password)
#subrotina que detecta a incidência de um ou mais caracteres numéricos[0-9]
sub numericCharacters{
	my $classificacao;
        my @senha = @_;
	if($senha [0] =~ /\d/){
	#	print "Tem numeros\n";
          $classificacao = 1;
          return $classificacao;
	}

}
#$_ lowerCaseCharcters($password)
#subrotina que detecta a incidência de um ou mais caracteres alfabéticos minúsculos [a-z]
sub lowerCaseCharacters{
	my $classificacao;
	my @senha = @_;
	if($senha [0]  =~ /[a-z]/){
         # print "Tem letras minusculas\n";
           return $classificacao = 1;
	}
}
#$_ upperCaseCharcters($password)
#subrotina que detecta a incidência de um ou mais caracteres alfabéticos maiúsculos [A-0]
sub upperCaseCharacters{
    my $classificacao;
    my @senha = @_; 
	if($senha [0]  =~ /[A-Z]/){
	#	print "Tem letras Maisculas\n";
          return $classificacao = 1;
	}
}
#$_ specialCharcters($password)
#subrotina que detecta a incidência de um ou mais caracteres especiais [!@#$%&*_+|~^]
sub specialCharacters{
    my $classificacao;
    my @senha = @_;
	if($senha [0]  =~ /[!@#\$\%~^|&*_+]/){
	#	print "Tem special\n";
          return $classificacao = 2;   
	}
}
#$_ checkBirthday($password, $birthday)
#subrotina que detecta a incidência da data de nascimento exclusivamente no final da senha 
sub checkBirthday {
  my @nascimento = $_[1];
  print $nascimento [0];
  my @senha = $_[0];
  if (index($senha [0], $nascimento [0]) != -1){
    #print "Senha utliza a data de nascimento\n";
    return 1;
  }
} 

#$_ checkName($password, $name)
#subrotina que detecta a incidência do nome exclusivamente no final da senha 
sub checkName{
  my @nome = $_[1];
  my @senha = $_[0];
  my $bool =0;
  if (index($senha [0], $nome [0]) != -1){
    #print "Senha utliza o nome\n";
    return $bool=1;
  }
}

1;