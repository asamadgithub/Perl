#!/usr/bin/perl
use strict;
use warnings;


print "\n\n";
my @a = (11, 9, 8, 12, 6, 7);

my @b = sort @a;

my @c = sort {$a <=> $b } @a;

print "The array a is: @a\n";
print "sorted array is: @b\n";
print "sorted array is: @c\n";

foreach my $x (@c){
print "$x\n";
}

