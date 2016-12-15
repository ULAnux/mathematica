@pairs = @ARGV;
$middle_min = 255;
$right_min = 255;

# find first pair in menu
foreach $pair (@pairs) {
	$pair = uc($pair);
	$middle = substr($pair,2,1);
	$right = substr($pair,3,1);

	$rnum = ord($right) - 65;
	$midnum = ord($middle) - 65;

	# adjust middle number so that z = -1, not 25
	$midnum = (($midnum+13) % 26) - 13;

	$middle_min = $midnum if ($midnum < $middle_min);

	if ($midnum == $middle_min) {
		$right_min = $rnum if ($rnum < $right_min);
	}
}

foreach $pair (@pairs) {
	$pair = uc($pair);
	$plain = substr($pair,0,1);
	$cypher = substr($pair,1,1);
	$middle = substr($pair,2,1);
	$right = substr($pair,3,1);

	$rnum = ord($right) - 65;
	$midnum = ord($middle) - 65;

	# adjust middle number so that z = -1, not 25
	$midnum = (($midnum+13) % 26) - 13;

	$mid_offset = $midnum - $middle_min;
	$right_offset = $rnum - $right_min;

	$pos = ($mid_offset * 26) + $right_offset;

	if (length($pt) < $pos) {
		$pt .= '.' x ($pos - length($pt));
		$ct .= '.' x ($pos - length($ct));
		$mt .= '.' x ($pos - length($mt));
	}

	$pt = substr($pt,0,$pos) . $plain  . substr($pt,$pos+1,length($pt));
	$ct = substr($ct,0,$pos) . $cypher . substr($ct,$pos+1,length($ct));
	$mt = substr($mt,0,$pos) . 'x'     . substr($mt,$pos+1,length($mt));
}

$to = 26 - $right_min;
$last_to = 0;

for ($i = 0 ; $i < length($mt) ; ++$i) {
	$to_band = int((26 + $i - $to) / 26);
	if ($last_to < $to_band) {
		$last_to = $to_band;
		$to_next = 1;
	}

	if (substr($mt,$i,1) eq 'x') {
		if ($to_next) {
			$to_next = 0;
			$mt = substr($mt,0,$i) . 't' . substr($mt,$i+1,length($mt));
		}
	}
}

print "$pt\n$ct\n$mt\n";

