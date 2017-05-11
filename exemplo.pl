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



numericCharacters ($password);
lowerCaseCharacters ($password);
upperCaseCharacters ($password);
specialCharacters ($password);
checkBirthday ($password, $birthday);
#anagramName ($password, $name);

sub checkBirthday {
  my @nascimento = $_[1];
  print "nascimento local :";
  print $nascimento [0]
  my @senha = $_[0];
  print "senha local :@senha\n";
  if ($senha[0] =~ /\Q$nascimento[0]\E/){
    print "Senha utliza a data de nascimento\n";
  }
} 


sub numericCharacters{
        my @senha = @_;
        print "senha funcao numero:";
        print $senha [0];
        print "\n";
	print "senha funcao numero array: @senha\n";
	if($senha [0] =~ /\d/){
		print "Tem numeros\n";
	}

}

sub lowerCaseCharacters{
	my @senha = @_;
	print "senha funcao lowererCase: @senha\n";
	if($senha [0]  =~ /[a-z]/){
                print "Tem letras minusculas\n";
	}
}

sub upperCaseCharacters{
        my @senha = @_; 
        print "senha funcao upperCase: @senha\n";
	if($senha [0]  =~ /[A-Z]/){
		print "Tem letras Maisculas\n";
	}
}

sub specialCharacters{
        my @senha = @_;
        print "senha funcap specialChar: @senha\n";
	if($senha [0]  =~ /[!@#\$\%~^|&*_+]/){
		print "Tem special\n";
	}
}

#sub anagramName{
#        my @nome = split (/ /, $name);
#        my @senha = split(/d+/,$password);
#        print "senha pos split: @senha\n";
#        if ($senha =~ $nome){
#		print "Possui nome na senha\n";
#	}
#}