#!/usr/bin/perl

use strict;
use warnings;


my $a ="THE IS FIRST STRINGS WRITTING IN A FILE";
my $b ="this is string second";
my $c ="STRINGS";
chomp $a; chomp $b; chomp $c;
if ( $a eq $b) {
	print "every thing is fine \n";
	}
else {
	print "troubles \n";
}
 


print lc $a , "\n";
print uc $b, "\n";



print lcfirst $a, "\n";
print ucfirst $b, "\n";
print "The length of first variavle is " , length $a, " characters" , "\n";


print rindex $a , $c , 10 ;
print "\n";
