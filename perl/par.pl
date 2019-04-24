#!/usr/bin/perl

use strict;

sub first {
	print "Parametri passati a first: @_\n";
}

sub second {
	sub inner {
		$_[0] = "NUOVO";
		print "Parametri passati a inner: @_\n";
	}

	print "Parametri passati a second: @_\n";

	&inner(@_);
}

print "Parametri da input: @ARGV\n";

&first(@ARGV);

&second(@ARGV);
