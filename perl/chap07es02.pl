#!/usr/bin/perl

use strict;

sub match {
	while (<>) {
		if (/(F|f)red/) {
			print $_
		}
	}
}

&match
