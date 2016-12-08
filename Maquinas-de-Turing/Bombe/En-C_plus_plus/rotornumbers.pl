#$rotor = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";

# BP WIRINGS

$rotor = "KFLNGMHERWAOUPXZIYVTQBJCSD";
$rotor = "FBKELTJSVYCMIXUNDRHAOQZGWP";
$rotor = "PCEGIKMDQSUYWAOZFJXHBLNVTR";
$rotor = "YDGUQXRBLCASWKTJZNPHVIMFEO";
$rotor = "HFNYCEUJLWBXSVGQKOADZPMTRI";

# GERMAN WIRINGS

#$grotor = "EKMFLGDQVZNTOWYHXUSPAIBRCJ";
#$grotor = "AJDKSIRUXBLHWTMCQGZNPYFVOE";
#$grotor = "BDFHJLCPRTXVZNYEIWGAKMUSQO";
#$grotor = "ESOVPZJAYQUIRHXLNFTGKDCMWB";
#$grotor = "VZBRGITYUPSDNHLXAWMJQOFECK"; 

# FRODE's WIRINGS Mk II
#$grotor = "EKMFLGDQVZNTOWYHXUSPAIBRCJ";
#$grotor = "AJDKSIRUXBLHWTMCQGZNPYFVOE";
#$grotor = "BDFHJLCPRTXVZNYEIWGAKMUSQO";
$grotor = "CFTPWQAKBZRVJSIYMOGUHLEDNX";
#$grotor = "EMXBDTIKVAWRUFPJNZCYOLSQHG";
#$grotor = "JPGVOUMFYQBENHZRDKASXLICTW";
#$grotor = "NZJHGRCXMYSWBOUFAIVLPEKQDT";
#$grotor = "FKQHTLXOCBJSPDZRAMEWNIUYGV";

$offset = 3;

for ($i = 0 ; $i < 26 ; ++$i) {
	$lpos = $i + $offset;
	$lpos -= 26 if ($lpos >= 26);

	$letter = substr($rotor,$lpos,1);

	$lnum = ord($letter) - 64 - ($lpos);

	$newletter = $i + $lnum;
	
	$newletter -= 26 if ($newletter > 26);
	$newletter += 26 if ($newletter <= 0);

	$newletter = chr($newletter+64);
	print $newletter;
}
print "\n";
exit;

for ($i = 0 ; $i < 26 ; ++$i) {
	$letter = substr($rotor,$i,1);
#	print "$letter ";
	$lnum1 = ord($letter) - 64;
	$lnum = ord($letter) - 64 -$i;
	$lnum +=26 if ($lnum < 0);
#	printf("%02d ",$lnum1);
#	printf("%02d ",$lnum);

	$letter = substr($grotor,$i,1);
	print "$letter ";
	$lnum = ord($letter) - 64 -$i;
	$lnum +=26 if ($lnum < 0);
#	printf("%02d\n",$lnum);
}


