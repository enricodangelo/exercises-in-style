#!/usr/bin/perl

use strict;

sub match {
	while (<>) {
		if (/(wilma|fred).*(wilma|fred)/) {
			print $_
		}
	}
}

&match
