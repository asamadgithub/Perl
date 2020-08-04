#!/usr/bin/perl
use strict;
use warnings;

print "\n\n";
my @a = qw(red green yellow blue);
print @a, "\n";
print "Element is array ", 0+@a , "\n";
print "The array colos are @a\n\n";



my @b=@a;
print "The copied array is @b\n\n";


my ($c1,$c2,$c3)=@a;
print "The scaler contect: ($c1,$c2,$c3)\n\n";

if (!@a){
print "because array has some value,\n\n";
} else {
print "array is non-empty\n\n";
}

my $d=localtime();
my @e=localtime();
print "scaler contexted time is $d\n\n";
print "list contexted time is @e\n\n";
