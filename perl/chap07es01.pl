#!/usr/bin/perl

use strict;

sub match {
	while (<>) {
		if (/fred/) {
			print $_
		}
	}
}

&match
