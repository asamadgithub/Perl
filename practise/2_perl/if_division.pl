#!/usr/bin/perl

use strict;
use warnings;


print "Enter the first number: ";
my $x1=<STDIN>;
chomp $x1;

print "Enter the second number:  ";
my $x2=<STDIN>;
chomp $x2;


print "Enter the third number:  ";
my $x3=<STDIN>;
chomp $x3;



	if ($x1 > $x2 && $x1 > $x3)
		{
		print "The first entered digits is greater than other two \n";
		}

	elsif ( $x2 > $x1 && $x2 > $x3) 
		{
		print "The second  entered digits is greater than other two \n";
                }
		
	else
		{
		print "The third  entered digits is greater than other two \n";
		}




