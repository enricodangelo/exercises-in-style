#!/usr/bin/perl

use strict;

sub match {
	while (<>) {
		if (/(.)\1/) {
			print $_
		}
	}
}

&match
