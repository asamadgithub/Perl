#!/usr/bin/perl

use strict;
use warnings;

my $s= "The black cat climbed to a green tree";
my $z;


$z = substr $s,  4, 5 ;
print $z;
print "\n";

$z = substr $s , 6 , 5 ;
print $z;
print "\n";


print "The length of string is ", length $s , " chracters";
print "\n";


$z = substr $s , 14 ;
print $z , "\n";


$z= substr $s , 10 , 3 , " dog"  ;
print $z , "\n" ;
print $s , "\n" ;
print "\n";
