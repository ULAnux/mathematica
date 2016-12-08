$pt = uc(shift);
$ct = uc(shift);
$mt = uc(shift);

# find earliest turnover

$min_to = 26;

for ($i = 0 ; $i < length($mt) ; ++$i) {
	$mask = substr($mt,$i,1);
	next if ($mask ne 'T');

	$to = $i % 26;

	$turnovers_exist = 1;
	$min_to = $to if ($to < $min_to);
}

for ($i = 0 ; $i < length($mt) ; ++$i) {
	$mask = substr($mt,$i,1);
	next if (($mask ne 'X') && ($mask ne 'T'));

	$rnum = (26 - $min_to + $i) % 26;
	$mnum = int((26 - $min_to + $i) / 26) - $turnovers_exist;
	$mnum = 25 if ($mnum == -1);

	$plain = substr($pt,$i,1);
	$cypher = substr($ct,$i,1);

	$mletter = chr($mnum+65);
	$rletter = chr($rnum+65);
	
	print $plain.$cypher.$mletter.$rletter." ";
}
print "\n";

