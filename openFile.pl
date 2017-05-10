#use warnings
#use strict

#sub OpenFile {
 # open (my $in, "<", $ARGV[0]) or die "Arquivo nao pode ser aberto: $!";

  #while (<$in>){
  #  print $_;
  #}

  #seek ($in, 35, 0);

 # print "*** Arquivo completo ***\n";
  #my @line = <$in>;
  #print @line;

  #close $in or die "Nao foi possivel fechar o arquivo: $!";
#}

#print OpenFile ($ARGV[0]),"\n";

print "Nome completo: ";
my $name = <STDIN>;

print "Data de nascimento: ";
my $birthday = <STDIN>;

#print "Email: ";
#my $email = <STDIN>;

print "Senha: ";
my $password = <STDIN>;

print $name;
print $birthday;
#print $email;
print $password;

my $grade = 0;

\w => [$name];
\b => [$birthday];
\a => [a-zA-Z0-9_];

$lengthName = length ($name);

$grade += numericCharacters ($password);
print "$grade\n";
$grade += lowerCaseCharacters ($password);
print "$grade\n";
$grade += upperCaseCharacters ($password);
print "$grade\n";
$grade += specialCharacters ($password);
print "$grade\n";
$grade += checkBirthday ($password);
print "$grade\n";
$grade += anagramName ($password, $lengthName, $name);
print "$grade\n";

sub checkBirthday {
  my $parcial = 0;
  if ($password =~ split (/\//,$birthday)| $password =~ split (/19/, $birthday)){
    print "Senha utliza a data de nascimento\n";
    $parcial =- 6;
  }
  
  return $parcial ++;
} 


sub numericCharacters{
        my $senha = $password; 
	my $note=0;
	if($password =~ \d){
		$note++;
		print "Tem numeros";
	}
	return $note;
}

sub lowerCaseCharacters{
	my $senha = $password;
	my $note=0;
	if($password =~ /[a-z]/){
                print "Tem letras m\n";
		$note++;
	}
	return $note;
}

sub upperCaseCharacters{
        my $senha = $password; 
	my $note=0;
	if($password =~ /[A-Z]/){
		print "Tem letras M\n";
		$note++;
	}
	return $note;
}

sub specialCharacters{
        my $senha = $password;
	my $note=0;
	if($password =~ \S){
		print "Tem special\n";
		$note++;
	}
	return $note;
}

sub anagramName{
        my $senha = $password;
        my $nome = $name;
	my $note= -5;
	if ($senha =~ split(//,$nome)){
		$note=0;
	}
}


