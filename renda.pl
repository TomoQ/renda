#!/usr/bin/perl -w

# RENDA tester  by TomoQ

use strict;
use warnings;

my $key = "love";
my $mostinput = "$key\n";
my $defaultcounts = 10;
my $counts = $defaultcounts;
my $starttime;
my $finishtime;

printf "Ready to type \"$key\" $defaultcounts times!\n";

while (<>) {
    if ($_ eq $mostinput) {
	$starttime = time();
	printf "Start!!\n";
	last;
    }
}
    
while (<>) {
    if ($_ eq $mostinput) {
	$counts--;
	if ($counts < 1) {
	    last;
	}
	printf "Type \"$key\", more $counts !!\n";
    } else {
	printf "Type ** $key **.\n";
    }
}

$finishtime = time();

my $lostedtime = $finishtime - $starttime;

printf "** Results **\n";
printf " You have needed $lostedtime seconds, type \"$key\" $defaultcounts times.\n";
printf "** Thanks!! **\n";

