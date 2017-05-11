use warnings;
use strict;

use File::Basename qw(dirname);
use Cwd  qw(abs_path);
use lib dirname(dirname abs_path $0) . 'C:\Users\laspi\Desktop';

use funcoes qw(checkBirthday numericCharacters lowerCaseCharacters upperCaseCharacters specialCharacters checkName);

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
