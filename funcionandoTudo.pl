use warnings;
use strict;

print "Nome completo: ";
my $name = <STDIN>;

print "Data de nascimento: ";
my $birthday = <STDIN>;

print "Senha: ";
my $password = <STDIN>;

#print $name;
#print $birthday;
#print $password;
print "---------\n";

my $qualquer = 0;

$qualquer += &numericCharacters ($password);
$qualquer += &lowerCaseCharacters ($password);
$qualquer += &upperCaseCharacters ($password);
$qualquer += &specialCharacters ($password);

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

print "Classificacao senha: $qualquer\n";

if ($qualquer <= 2){
  print "Senha fraca\n";
}
if($qualquer == 3 || $qualquer == 4) {
     if (&checkBirthday ($password, $birthday) == 1){
       print "Senha fraca aniversario\n";
     } 
     if (&checkName ($password, $name) == 1){
       print "Senha fraca nome\n";
     }
}
