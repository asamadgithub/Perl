#!/usr/bin/perl


use strict;
use warnings;

print "Enter the length of rectangle ";
my $length =<STDIN>;
#chomp $length;

print "Enter the width of rectangle ";
my $width =<STDIN>;
#chomp $width;

my $area = $length * $width;
print "The area of rectangle is $area. \n";


my $concatinate = '$length ' . ' $width';
print $concatinate , "\n";
