#use warnings
#use strict

sub OpenFile {
  open (my $in, "<", $ARGV[0]) or die "Arquivo nao pode ser aberto: $!";

  #while (<$in>){
  #  print $_;
  #}

  seek ($in, 35, 0);

  print "*** Arquivo completo ***\n";
  my @line = <$in>;
  print @line;

  close $in or die "Nao foi possivel fechar o arquivo: $!";
}

print OpenFile ($ARGV[0]),"\n";

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

\w => [$name];
\b => [$birthday];

#my ($capt) = ( $password =~ \w );
#print "$capt\n" ;

#f ($password =~ /\w+/i){
#  print "Senha utliza o seu nome\n";
#}



if ($password =~ split (//,$birthday) | $password =~ split (/19/, $birthday)){
  
  print "Senha utliza a data de nascimento\n";
} 


