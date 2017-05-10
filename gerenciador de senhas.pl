sub numericCharacters{($password)=@_ 
	my $note=0;
	if($password =~ \d){
		$note++;
	}
	return $note;
}

sub lowerCaseCharacters{($password)=@_ 
	my $note=0;
	if($password =~ /[a-z]/){
		$note++;
	}
	return $note;
}

sub upperCaseCharacters{($password)=@_ 
	my $note=0;
	if($password =~ /[A-Z]/){
		$note++;
	}
	return $note;
}

sub specialCharacters{($password)=@_
	my $note=0;
	if($password =~ \W){
		$note++;
	}
	return $note;
}

sub anagramName{($password,$name)=@_
	my $note= -5;
	if ($password=~ /split(//,$name)/){
		$note=0;
	}
}