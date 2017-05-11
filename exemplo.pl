use warnings;
use strict;

print "Nome completo: ";
my $name = <STDIN>;

print "Data de nascimento: ";
my $birthday = <STDIN>;

print "Senha: ";
my $password = <STDIN>;

print "---------\n";



numericCharacters ($password);
lowerCaseCharacters ($password);
upperCaseCharacters ($password);
specialCharacters ($password);
checkBirthday ($password, $birthday);
checkName ($password, $name);

sub checkBirthday {
  my $bool =0;
  my @nascimento = $_[1];
  print $nascimento [0];
  my @senha = $_[0];
  if (index($senha [0], $nascimento [0]) != -1){
    print "Senha utliza a data de nascimento\n";
    return $bool=1;
  }  
} 


sub numericCharacters{
  my @senha = @_;
  print $senha [0];
  print "\n";
	if($senha [0] =~ /\d/){
		print "Tem numeros\n";
	}

}

sub lowerCaseCharacters{
	my @senha = @_;
	if($senha [0]  =~ /[a-z]/){
    print "Tem letras minusculas\n";
	}
}

sub upperCaseCharacters{
  my @senha = @_; 
  if($senha [0]  =~ /[A-Z]/){
		print "Tem letras Maisculas\n";
	}
}

sub specialCharacters{
  my @senha = @_;
  if($senha [0]  =~ /[!@#\$\%~^|&*_+]/){
		print "Tem special\n";
	}
}

sub checkName{
  my @nome = $_[1];
  print $nome [0];
  my @senha = $_[0];
  my $bool =0;
  if (index($senha [0], $nome [0]) != -1){
    print "Senha utliza o nome\n";
    return $bool=1;
  }
}