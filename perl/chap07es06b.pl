#!/usr/bin/perl

use strict;

sub match {
	my $pattern = "(wilma|barney)";
	while (<>) {
		if (/$pattern.*$pattern/) {
			print $_
		}
	}
}

&match
