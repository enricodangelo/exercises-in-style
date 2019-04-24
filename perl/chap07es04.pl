#!/usr/bin/perl

use strict;

sub match {
	while (<>) {
		if (/[A-Z]*[a-z]+[A-Z]*/) {
			print $_
		}
	}
}

&match
