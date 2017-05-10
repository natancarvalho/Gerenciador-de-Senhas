open (my $in, "<", $ARGV[0]) or die "Arquivo nao pode ser aberto: $!";

while (<$in>){
  print $_;
}

seek ($in, 0, 0);

print "*** Primeira linha  ***\n";
my $line = <$in>;
print $line;

seek ($in, 0, 0);

print "*** Arquivo completo ***\n";
my @lines = <$in>;
print @lines;

close $in or die "Nao foi possivel fechar o arquivo: $!";

