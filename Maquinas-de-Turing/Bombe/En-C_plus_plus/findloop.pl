$maxlen = shift;
$plain = shift;
$cypher = shift;

$length = length($plain);
$length = length($cypher) if (length($cypher) < $length);

for ($ml = 2 ; $ml <= $maxlen ; ++$ml) {
	scanforloops($plain,$cypher,$ml);

	foreach $loopdesc (sort keys %loops) {
		$loops{$loopdesc} = $ml if (!($loops{$loopdesc}));
	}
}

foreach $loopdesc (sort keys %loops) {
	print $loops{$loopdesc};
	print " length loop found ending at : $loopdesc\n";
}

sub scanforloops {

	my ($plain,$cypher,$maxlen) = @_;
	$start = 0;

	for (;;) {
		last if ($start + $maxlen > $length);
		findloop($plain,$cypher,$start,$start+$maxlen);
		$start++;
	}
}

sub findloop {
	my ($plain,$cypher,$start,$end) = @_;

	%pmap = ();

	for ($i = $start ; $i < $end ; ++$i) {
		$pletter = substr($plain,$i,1);
		$cletter = substr($cypher,$i,1);
		next if ($pletter eq '.');
		next if ($cletter eq '.');

	#	print "$pletter $cletter\n";

		if (exists ($pmap{$cletter}) && exists($pmap{$cletter}{$pletter})) {
			$i1 = $i+1;
			if (!exists($loops{"$pletter->$cletter at $i1"})) {
				$loops{"$pletter->$cletter at $i1"} = 0;
			}
		}
		else {
			addreachable($cletter,$pletter,0);
			addreachable($pletter,$cletter,0);
		}
	}
}

# dump map
sub dumpmap {

	foreach $x (sort keys(%pmap)) {
		print "$x->";
		$href = $pmap{$x};
		foreach $y (sort keys(%$href)) {
			print "$y";
		}
		print "\n";
	}
}

sub addreachable {
	my($x,$y,$level) = @_;
#	print '.' x $level, "($x,$y)";
	if (exists($pmap{$x}{$y})) {
#		print "->stop\n";
		return;
	}
#	print "\n";

	# add him (y) to my (x) list
	$pmap{$x}{$y} = 1;

	# get his (y) reachables and add to my (x) list
	$href = $pmap{$y};
	foreach $yreach (keys(%$href)) {
		next if ($x eq $yreach);
#		print '.' x $level, "x=$x,y=$y,yrk=$yreach\n";
		$pmap{$x}{$yreach} = 2;

		# add me (x) and my reachables to the lists of his (y) reachable letters
		addreachable($yreach,$x,$level+1);
		$href2 = $pmap{$x};
		foreach $xreach (keys(%$href2)) {
			next if ($yreach eq $xreach);
			addreachable($yreach,$xreach,$level+1);
		}
	}
}
