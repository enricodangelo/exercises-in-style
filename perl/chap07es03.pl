#!/usr/bin/perl

use strict;

sub match {
	while (<>) {
		if (/\./) {
			print $_
		}
	}
}

&match
