#use warnings
#use strict


print "Nome completo: ";
my $name = <STDIN>;

print "Data de nascimento: ";
my $birthday = <STDIN>;

#print "Email: ";
#my $email = <STDIN>;

print "Senha: ";
my $password = <STDIN>;

print "$name\n";
print "$birthday\n";
#print $email;
print "$password\n";
&print2arg($name);

my $grade = 0;

\w => [$name];
\b => [$birthday];
\a => [a-zA-Z0-9_];
my $frase;
my $estado;
my $cidade;
$lengthName = length ($name);
    # $frase = “Campinas – SP”;
    #($cidade,$estado) = split(” – “,$frase); # Divide a frase por ” – ”

    #print “Eu moro em $cidade que fica no estado de $estado”;

$grade += &numericCharacters ($password);
		print "$grade\n";
#$grade += &lowerCaseCharacters ($password);
#print "$grade\n";
#$grade += &upperCaseCharacters ($password);
#print "$grade\n";
#$grade += &specialCharacters ($password);
#print "$grade\n";
#$grade += &checkBirthday ($password);
#print "$grade\n";
#$grade += anagramName ($password, $lengthName, $name);
#print "$grade\n";

sub print2arg{
	my @t;
	my @c;
	print "seu primeiro argumento é $_[0]";
	print "e o segundo é $_[1]\n";
	print "argumento : @_\n";
	
	@t= "funciona por favor\n";
	if (@t =~ /[a-z]/){ @c=@t;	
	}
	print "@t\n";
	print "@c\n";
	@t = @_;
	print "@t\n";
}

sub checkBirthday {
  my $parcial = 0;
  print " Os parametros são: $_[0]  $_[1]\n";
  if ($_[0] =~ split (//,$_[1])| $_0 =~ split (/19/, $_[1])){
    print "Senha utliza a data de nascimento\n";
    $parcial =- 6;
  }
  
  return $parcial ++;
} 


sub numericCharacters{
	my $note=0;
	print "Parametro antes de passar para a variável: @_\n";
	my $teste= "qwety";
	print "variável teste antes de receber o paramentro: $teste\n";
	@teste=@_;
	print "variável teste depois de receber o parametro: $teste\n";
	print " parametro é: @_\n";
	if(@este =~ /[0-9]/){
		$note++;
		$teste = "porra";
		print "$teste\n";
		print " parametro é: @_\n";
		print "Tem numeros\n";
	}
	return $note;
}

sub lowerCaseCharacters{
	my $note=0;
	print " parametro é: @_\n";
	if(@_ =~ /[a-z]/){
                print "Tem letras m\n";
		$note++;
	}
	return $note;
}

sub upperCaseCharacters{ 
	my $note=0;
	print " parametro é: @_\n";
	if(@_ =~ /[A-Z]/){
		print "Tem letras M\n";
		$note++;
	}
	return $note;
}

sub specialCharacters{
	my $note=0;
	print " parametro é: @_\n";
	if(@_ =~ /[!@#$%¨&]/){
		print "Tem special\n";
		$note++;
	}
	return $note;
}

sub anagramName{
	my $note= -5;
	print "Os parametros são: $_[0]  $_[1]\n";
	if ($_[0] =~ split(//,$_[1])){
		$note=0;
	}
}


	