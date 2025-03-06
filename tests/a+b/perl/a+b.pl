#!/usr/bin/env perl
use strict;
use warnings;

my $input = <STDIN>;
my ($a, $b) = split(' ', $input);
print $a + $b . "\n";